using GMap.NET;
using GMap.NET.MapProviders;
using GMap.NET.WindowsForms;
using GMap.NET.WindowsForms.Markers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RouteMap
{
    public partial class Form1 : Form
    {
        List<GMarkerGoogle> markersList = new List<GMarkerGoogle>();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            gmap.MapProvider = GMap.NET.MapProviders.BingMapProvider.Instance;
            GMap.NET.GMaps.Instance.Mode = GMap.NET.AccessMode.ServerAndCache;
            gmap.Position = new GMap.NET.PointLatLng(-18.908819, -48.260634);
            gmap.MaxZoom = 18;
            gmap.Zoom = 15;

        }

        private List<String> GetAddress(PointLatLng point)
        {
            List<Placemark> placemarks = null;
            List<String> addresses = new List<string>();

            var statusCode = GMapProviders.GoogleMap.GetPlacemarks(point, out placemarks);

            if (statusCode == GeoCoderStatusCode.G_GEO_SUCCESS && placemarks != null)
            {


                foreach (var pm in placemarks)
                {
                    addresses.Add(pm.Address);
                }

            }
            return addresses;
        }

        private List<PointLatLng> GetCoordinates(String keywords)
        {

            List<PointLatLng> list;

            var statusCode = GMapProviders.OpenStreetMap.GetPoints(keywords, out list);

            return list;
        }



        //traça linha reta entre dois pontos
        private void gmap_MouseClick(object sender, MouseEventArgs e)
        {

            if (e.Clicks == 1 && e.Button == MouseButtons.Left)
            {
                var point = gmap.FromLocalToLatLng(e.X, e.Y);
                double lat = point.Lat;
                double lng = point.Lng;

                gmap.Position = point;

                GMapOverlay markersOverlay = new GMapOverlay("markers");
                GMarkerGoogle marker = new GMarkerGoogle(point, GMarkerGoogleType.blue);
                markersList.Add(marker);
                markersOverlay.Markers.Add(marker);
                gmap.Overlays.Add(markersOverlay);



            }

            if (markersList.Count == 2)
            {

                PointLatLng start = new PointLatLng(markersList.ElementAt(0).Position.Lat, markersList.ElementAt(0).Position.Lng);
                PointLatLng end = new PointLatLng(markersList.ElementAt(1).Position.Lat, markersList.ElementAt(1).Position.Lng);


                GMapRoute line_layer = new GMapRoute("single_line");


                GMapOverlay line_overlay = new GMapOverlay();

                line_layer.Stroke = new Pen(Brushes.MediumVioletRed, 2); //width and color of line

                line_overlay.Routes.Add(line_layer);
                gmap.Overlays.Add(line_overlay);

                //Once the layer is created, simply add the two points you want

                line_layer.Points.Add(new PointLatLng(markersList.ElementAt(0).Position.Lat, markersList.ElementAt(0).Position.Lng));
                line_layer.Points.Add(new PointLatLng(markersList.ElementAt(1).Position.Lat, markersList.ElementAt(1).Position.Lng));

                //Para desenhar a linha é preciso atualizar o mapa
                gmap.UpdateRouteLocalPosition(line_layer);

                Label dist = new Label();

                dist.Text = "A distândia é " + line_layer.Distance + "Km";

                dist.Visible = true;

                dist.Size = new Size(dist.PreferredWidth, dist.PreferredHeight);

                GPoint p = gmap.FromLatLngToLocal(line_layer.Points.ElementAt(1));
                dist.Location = new Point((int)p.X, (int)p.Y);

                dist.BackColor = Color.BlueViolet;

                Controls.Add(dist);

                dist.BringToFront();

                //limpa o markersList para criar uma linha a cada dois marcadores colocados no mapa
                markersList.Clear();


            }
        }

       
    }
}
