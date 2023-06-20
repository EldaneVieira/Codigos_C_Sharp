; ModuleID = 'obj\Debug\90\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\90\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [136 x i32] [
	i32 57263871, ; 0: Xamarin.Forms.Core.dll => 0x369c6ff => 53
	i32 57967248, ; 1: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 50
	i32 160529393, ; 2: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 15
	i32 166922606, ; 3: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 26
	i32 201930040, ; 4: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 16
	i32 219130465, ; 5: Xamarin.Android.Support.v4 => 0xd0faa61 => 45
	i32 232815796, ; 6: System.Web.Services => 0xde07cb4 => 66
	i32 293914992, ; 7: Xamarin.Android.Support.Transition => 0x1184c970 => 44
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 10
	i32 388313361, ; 9: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 22
	i32 389971796, ; 10: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 28
	i32 415300654, ; 11: CafeMenuApp.dll => 0x18c0fc2e => 3
	i32 442521989, ; 12: Xamarin.Essentials => 0x1a605985 => 52
	i32 465846621, ; 13: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 14: System.dll => 0x1bff388e => 9
	i32 514659665, ; 15: Xamarin.Android.Support.Compat => 0x1ead1551 => 26
	i32 524864063, ; 16: Xamarin.Android.Support.Print => 0x1f48ca3f => 41
	i32 526420162, ; 17: System.Transactions.dll => 0x1f6088c2 => 60
	i32 539750087, ; 18: Xamarin.Android.Support.Design => 0x202beec7 => 33
	i32 571524804, ; 19: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 48
	i32 605376203, ; 20: System.IO.Compression.FileSystem => 0x24154ecb => 64
	i32 690569205, ; 21: System.Xml.Linq.dll => 0x29293ff5 => 14
	i32 692692150, ; 22: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 23
	i32 774543827, ; 23: CafeMenuApp.Android => 0x2e2a99d3 => 0
	i32 775507847, ; 24: System.IO.Compression => 0x2e394f87 => 63
	i32 801787702, ; 25: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 37
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 62
	i32 882883187, ; 27: Xamarin.Android.Support.v4.dll => 0x349fba73 => 45
	i32 882944797, ; 28: CafeMenuApp.Android.dll => 0x34a0ab1d => 0
	i32 916714535, ; 29: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 41
	i32 958213972, ; 30: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 40
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 987342438, ; 32: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 19
	i32 1042160112, ; 33: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 55
	i32 1098167829, ; 34: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 21
	i32 1098259244, ; 35: System => 0x41761b2c => 9
	i32 1292763917, ; 36: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 30
	i32 1297413738, ; 37: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 18
	i32 1359785034, ; 38: Xamarin.Android.Support.Design.dll => 0x510cac4a => 33
	i32 1360004303, ; 39: CafeMenuApp => 0x511004cf => 3
	i32 1365406463, ; 40: System.ServiceModel.Internals.dll => 0x516272ff => 57
	i32 1445445088, ; 41: Xamarin.Android.Support.Fragment => 0x5627bde0 => 36
	i32 1460219004, ; 42: Xamarin.Forms.Xaml => 0x57092c7c => 56
	i32 1462112819, ; 43: System.IO.Compression.dll => 0x57261233 => 63
	i32 1574652163, ; 44: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 29
	i32 1587447679, ; 45: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 15
	i32 1592978981, ; 46: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1639515021, ; 47: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 48: System.Runtime => 0x62c6282e => 12
	i32 1662014763, ; 49: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 49
	i32 1776026572, ; 50: System.Core.dll => 0x69dc03cc => 8
	i32 1866717392, ; 51: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 37
	i32 1867746548, ; 52: Xamarin.Essentials.dll => 0x6f538cf4 => 52
	i32 1877418711, ; 53: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 48
	i32 1878053835, ; 54: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 56
	i32 1916660109, ; 55: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 21
	i32 2037417872, ; 56: Xamarin.Android.Support.ViewPager => 0x79708790 => 51
	i32 2044222327, ; 57: Xamarin.Android.Support.Loader => 0x79d85b77 => 38
	i32 2079903147, ; 58: System.Runtime.dll => 0x7bf8cdab => 12
	i32 2090596640, ; 59: System.Numerics.Vectors => 0x7c9bf920 => 11
	i32 2126786730, ; 60: Xamarin.Forms.Platform.Android => 0x7ec430aa => 54
	i32 2139458754, ; 61: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 35
	i32 2166116741, ; 62: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 29
	i32 2196165013, ; 63: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 50
	i32 2201231467, ; 64: System.Net.Http => 0x8334206b => 1
	i32 2330457430, ; 65: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 28
	i32 2330986192, ; 66: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 42
	i32 2373288475, ; 67: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 36
	i32 2440966767, ; 68: Xamarin.Android.Support.Loader.dll => 0x917e326f => 38
	i32 2471841756, ; 69: netstandard.dll => 0x93554fdc => 58
	i32 2475788418, ; 70: Java.Interop.dll => 0x93918882 => 5
	i32 2487632829, ; 71: Xamarin.Android.Support.DocumentFile => 0x944643bd => 34
	i32 2501346920, ; 72: System.Data.DataSetExtensions => 0x95178668 => 61
	i32 2698266930, ; 73: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 19
	i32 2751899777, ; 74: Xamarin.Android.Support.Collections => 0xa406a881 => 25
	i32 2766581644, ; 75: Xamarin.Forms.Core => 0xa4e6af8c => 53
	i32 2782647110, ; 76: Xamarin.Android.Support.CustomTabs.dll => 0xa5dbd346 => 31
	i32 2788639665, ; 77: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 39
	i32 2788775637, ; 78: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 43
	i32 2819470561, ; 79: System.Xml.dll => 0xa80db4e1 => 13
	i32 2876493027, ; 80: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 43
	i32 2893257763, ; 81: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 16
	i32 2903344695, ; 82: System.ComponentModel.Composition => 0xad0d8637 => 65
	i32 2905242038, ; 83: mscorlib.dll => 0xad2a79b6 => 7
	i32 2919462931, ; 84: System.Numerics.Vectors.dll => 0xae037813 => 11
	i32 2921692953, ; 85: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 32
	i32 2922925221, ; 86: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 49
	i32 3044182254, ; 87: FormsViewGroup => 0xb57288ee => 4
	i32 3056250942, ; 88: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 24
	i32 3068715062, ; 89: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 17
	i32 3092211740, ; 90: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 40
	i32 3111772706, ; 91: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3191408315, ; 92: Xamarin.Android.Support.CustomTabs => 0xbe3906bb => 31
	i32 3204380047, ; 93: System.Data.dll => 0xbefef58f => 59
	i32 3204912593, ; 94: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 24
	i32 3233339011, ; 95: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 18
	i32 3247949154, ; 96: Mono.Security => 0xc197c562 => 67
	i32 3296380511, ; 97: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 25
	i32 3317144872, ; 98: System.Data => 0xc5b79d28 => 59
	i32 3321585405, ; 99: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 34
	i32 3352662376, ; 100: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 27
	i32 3357663996, ; 101: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 30
	i32 3366347497, ; 102: Java.Interop => 0xc8a662e9 => 5
	i32 3404865022, ; 103: System.ServiceModel.Internals => 0xcaf21dfe => 57
	i32 3429136800, ; 104: System.Xml => 0xcc6479a0 => 13
	i32 3430777524, ; 105: netstandard => 0xcc7d82b4 => 58
	i32 3439690031, ; 106: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 23
	i32 3476120550, ; 107: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 108: System.Transactions => 0xcfd0c798 => 60
	i32 3498942916, ; 109: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 47
	i32 3509114376, ; 110: System.Xml.Linq => 0xd128d608 => 14
	i32 3536029504, ; 111: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 54
	i32 3547625832, ; 112: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 42
	i32 3567349600, ; 113: System.ComponentModel.Composition.dll => 0xd4a16f60 => 65
	i32 3632359727, ; 114: Xamarin.Forms.Platform => 0xd881692f => 55
	i32 3664423555, ; 115: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 51
	i32 3672681054, ; 116: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 117: System.Web.Services.dll => 0xdb2009fe => 66
	i32 3678221644, ; 118: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 46
	i32 3681174138, ; 119: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 17
	i32 3689375977, ; 120: System.Drawing.Common => 0xdbe768e9 => 62
	i32 3714038699, ; 121: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 39
	i32 3718463572, ; 122: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 22
	i32 3776062606, ; 123: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 35
	i32 3829621856, ; 124: System.Numerics.dll => 0xe4436460 => 10
	i32 3832731800, ; 125: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 27
	i32 3862817207, ; 126: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 20
	i32 3874897629, ; 127: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 20
	i32 3883175360, ; 128: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 46
	i32 3920810846, ; 129: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 64
	i32 3945713374, ; 130: System.Data.DataSetExtensions.dll => 0xeb2ecede => 61
	i32 4063435586, ; 131: Xamarin.Android.Support.CustomView => 0xf2331b42 => 32
	i32 4105002889, ; 132: Mono.Security.dll => 0xf4ad5f89 => 67
	i32 4151237749, ; 133: System.Core => 0xf76edc75 => 8
	i32 4216993138, ; 134: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 44
	i32 4219003402 ; 135: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 47
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [136 x i32] [
	i32 53, i32 50, i32 15, i32 26, i32 16, i32 45, i32 66, i32 44, ; 0..7
	i32 10, i32 22, i32 28, i32 3, i32 52, i32 7, i32 9, i32 26, ; 8..15
	i32 41, i32 60, i32 33, i32 48, i32 64, i32 14, i32 23, i32 0, ; 16..23
	i32 63, i32 37, i32 62, i32 45, i32 0, i32 41, i32 40, i32 4, ; 24..31
	i32 19, i32 55, i32 21, i32 9, i32 30, i32 18, i32 33, i32 3, ; 32..39
	i32 57, i32 36, i32 56, i32 63, i32 29, i32 15, i32 2, i32 1, ; 40..47
	i32 12, i32 49, i32 8, i32 37, i32 52, i32 48, i32 56, i32 21, ; 48..55
	i32 51, i32 38, i32 12, i32 11, i32 54, i32 35, i32 29, i32 50, ; 56..63
	i32 1, i32 28, i32 42, i32 36, i32 38, i32 58, i32 5, i32 34, ; 64..71
	i32 61, i32 19, i32 25, i32 53, i32 31, i32 39, i32 43, i32 13, ; 72..79
	i32 43, i32 16, i32 65, i32 7, i32 11, i32 32, i32 49, i32 4, ; 80..87
	i32 24, i32 17, i32 40, i32 2, i32 31, i32 59, i32 24, i32 18, ; 88..95
	i32 67, i32 25, i32 59, i32 34, i32 27, i32 30, i32 5, i32 57, ; 96..103
	i32 13, i32 58, i32 23, i32 6, i32 60, i32 47, i32 14, i32 54, ; 104..111
	i32 42, i32 65, i32 55, i32 51, i32 6, i32 66, i32 46, i32 17, ; 112..119
	i32 62, i32 39, i32 22, i32 35, i32 10, i32 27, i32 20, i32 20, ; 120..127
	i32 46, i32 64, i32 61, i32 32, i32 67, i32 8, i32 44, i32 47 ; 136..135
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
