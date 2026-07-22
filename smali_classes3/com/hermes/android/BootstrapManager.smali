.class public final Lcom/hermes/android/BootstrapManager;
.super Ljava/lang/Object;
.source "BootstrapManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/BootstrapManager$Companion;,
        Lcom/hermes/android/BootstrapManager$HealthReport;,
        Lcom/hermes/android/BootstrapManager$LeaseBootIds;,
        Lcom/hermes/android/BootstrapManager$LeaseVerdict;,
        Lcom/hermes/android/BootstrapManager$Progress;,
        Lcom/hermes/android/BootstrapManager$UpdateError;,
        Lcom/hermes/android/BootstrapManager$UpdateInfo;,
        Lcom/hermes/android/BootstrapManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBootstrapManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BootstrapManager.kt\ncom/hermes/android/BootstrapManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,3628:1\n411#1,6:3687\n1#2:3629\n1#2:3680\n1863#3,2:3630\n774#3:3632\n865#3,2:3633\n1863#3,2:3643\n1863#3,2:3645\n1863#3,2:3650\n1863#3,2:3656\n295#3,2:3658\n1611#3,9:3670\n1863#3:3679\n1864#3:3681\n1620#3:3682\n774#3:3697\n865#3,2:3698\n1863#3,2:3700\n1863#3,2:3702\n2632#3,3:3704\n774#3:3707\n865#3,2:3708\n1557#3:3712\n1628#3,2:3713\n1630#3:3719\n1557#3:3720\n1628#3,3:3721\n13409#4,2:3635\n12584#4,2:3639\n13409#4,2:3641\n3829#4:3647\n4344#4,2:3648\n1310#4,2:3652\n1310#4,2:3665\n3829#4:3667\n4344#4,2:3668\n12574#4,2:3683\n12574#4,2:3685\n13409#4,2:3693\n13409#4,2:3695\n13409#4,2:3710\n1317#5,2:3637\n1317#5,2:3654\n183#5,2:3663\n183#5,2:3715\n183#5,2:3717\n1104#6,3:3660\n*S KotlinDebug\n*F\n+ 1 BootstrapManager.kt\ncom/hermes/android/BootstrapManager\n*L\n2965#1:3687,6\n2784#1:3680\n584#1:3630,2\n635#1:3632\n635#1:3633,2\n952#1:3643,2\n1009#1:3645,2\n1015#1:3650,2\n1735#1:3656,2\n2285#1:3658,2\n2784#1:3670,9\n2784#1:3679\n2784#1:3681\n2784#1:3682\n3452#1:3697\n3452#1:3698,2\n3454#1:3700,2\n3456#1:3702,2\n3471#1:3704,3\n3476#1:3707\n3476#1:3708,2\n1112#1:3712\n1112#1:3713,2\n1112#1:3719\n2328#1:3720\n2328#1:3721,3\n746#1:3635,2\n824#1:3639,2\n836#1:3641,2\n1014#1:3647\n1014#1:3648,2\n1391#1:3652,2\n2646#1:3665,2\n2783#1:3667\n2783#1:3668,2\n2787#1:3683,2\n2792#1:3685,2\n3221#1:3693,2\n3313#1:3695,2\n3513#1:3710,2\n790#1:3637,2\n1409#1:3654,2\n2307#1:3663,2\n1113#1:3715,2\n1115#1:3717,2\n2305#1:3660,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0011\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 \u00b7\u00012\u00020\u0001:\u000e\u00b5\u0001\u00b6\u0001\u00b7\u0001\u00b8\u0001\u00b9\u0001\u00ba\u0001\u00bb\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0015H\u0002J2\u0010\u001a\u001a\u0002H\u001b\"\u0004\u0008\u0000\u0010\u001b2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u0002H\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001fH\u0082\u0008\u00a2\u0006\u0002\u0010 J\u0006\u0010.\u001a\u00020\u0015J$\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u00072\u0008\u0008\u0002\u00103\u001a\u00020\u00182\u0008\u0008\u0002\u00104\u001a\u000200H\u0002J\"\u00105\u001a\u00020\u00152\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@\u00a2\u0006\u0002\u00109J\u0008\u0010:\u001a\u00020\u0015H\u0002J\u0008\u0010;\u001a\u00020\u0015H\u0002J\u0008\u0010<\u001a\u00020\u0015H\u0002J\u001e\u0010=\u001a\u00020\u00152\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010?\u001a\u00020\u000bH\u0002J\u0018\u0010@\u001a\u00020\u00182\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u000bH\u0002J\u0008\u0010C\u001a\u00020\u0015H\u0002J)\u0010D\u001a\u00020\u00152\u0006\u0010E\u001a\u00020\u000b2\u0012\u0010F\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070G\"\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010HJ\u0010\u0010I\u001a\u00020\u00182\u0006\u0010B\u001a\u00020\u000bH\u0002J \u0010J\u001a\u00020\u00152\u0006\u0010E\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002J\u0008\u0010M\u001a\u00020\u0015H\u0002J\u0008\u0010N\u001a\u00020\u0015H\u0002J\u0008\u0010O\u001a\u00020\u0015H\u0002J\u0008\u0010P\u001a\u00020\u0015H\u0002J\u0008\u0010Q\u001a\u00020\u0015H\u0002J\u0010\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u000bH\u0002J\u0006\u0010W\u001a\u00020\u0018J\u0006\u0010X\u001a\u00020\u0018J\u0006\u0010Y\u001a\u00020ZJ\u0008\u0010[\u001a\u00020ZH\u0002J\u0008\u0010\\\u001a\u00020\u0018H\u0002J+\u0010]\u001a\u0004\u0018\u0001H\u001b\"\u0004\u0008\u0000\u0010\u001b2\u0006\u0010^\u001a\u00020\u00072\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001fH\u0002\u00a2\u0006\u0002\u0010_J\u0018\u0010`\u001a\u00020\u00152\u0006\u0010T\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u0007H\u0002J\u0010\u0010b\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0007H\u0002J\u0010\u0010d\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0007H\u0002J\u0008\u0010e\u001a\u00020\u0015H\u0002J\u0008\u0010f\u001a\u00020\u0015H\u0002J\u0008\u0010g\u001a\u00020\u0015H\u0002J\u0014\u0010h\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070iH\u0002J\u0014\u0010j\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070iH\u0002J\u0006\u0010m\u001a\u00020\u0018J\u0008\u0010p\u001a\u00020\u0018H\u0002J\u0006\u0010q\u001a\u00020\u0015J\u0008\u0010t\u001a\u00020\u0018H\u0002J\u0006\u0010u\u001a\u00020\u0015J\u0008\u0010v\u001a\u00020\u0015H\u0002J\u0006\u0010w\u001a\u00020\u0015J\u0012\u0010x\u001a\u00020\u00152\u0008\u0008\u0002\u0010y\u001a\u00020\u0018H\u0002J\u0010\u0010z\u001a\u00020\u00152\u0006\u0010y\u001a\u00020\u0018H\u0002J\u0006\u0010}\u001a\u00020\u0015J\u0006\u0010~\u001a\u00020\u0018J\u001e\u0010\u007f\u001a\u00020\u00182\u0016\u0008\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107J!\u0010\u0080\u0001\u001a\u00020\u00182\u0016\u0008\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107H\u0002J\u0007\u0010\u0081\u0001\u001a\u00020\u0007J\u0007\u0010\u0083\u0001\u001a\u00020\u0007J\u0019\u0010\u0084\u0001\u001a\u00020\u00182\u0007\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00020\u0007J\u0007\u0010\u0087\u0001\u001a\u00020\u0015J\u0007\u0010\u0088\u0001\u001a\u00020\u0018J#\u0010\u0089\u0001\u001a\u00020\u00182\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@\u00a2\u0006\u0002\u00109J\u0013\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020&H\u0002J\u0016\u0010\u008d\u0001\u001a\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0005\u0012\u00030\u008b\u00010iJ\u0016\u0010\u008e\u0001\u001a\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0005\u0012\u00030\u008b\u00010iJ\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001J\u001f\u0010\u0091\u0001\u001a\u00020\u00182\u0016\u0008\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107J!\u0010\u0092\u0001\u001a\u00020\u00182\u0016\u0008\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107H\u0002J\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u0001J#\u0010\u0095\u0001\u001a\u00020\u00152\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@\u00a2\u0006\u0002\u00109J#\u0010\u0096\u0001\u001a\u00020\u00152\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@\u00a2\u0006\u0002\u00109J\u0007\u0010\u0097\u0001\u001a\u00020\u0018J\u0007\u0010\u0098\u0001\u001a\u00020\u0015J\t\u0010\u0099\u0001\u001a\u00020\u0015H\u0002J)\u0010\u009a\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u009c\u0001\u001a\u000200H\u0002JV\u0010\u009d\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u009e\u0001\u001a\u00020&2\u001e\u0008\u0002\u0010\u009f\u0001\u001a\u0017\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00a0\u00012\u000b\u0008\u0002\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0007H\u0002J\u008e\u0001\u0010\u00a2\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u009e\u0001\u001a\u00020&2@\u0008\u0002\u0010\u009f\u0001\u001a9\u0012\u0015\u0012\u00130&\u00a2\u0006\u000e\u0008\u00a3\u0001\u0012\t\u0008A\u0012\u0005\u0008\u0008(\u00a4\u0001\u0012\u0015\u0012\u00130\u0007\u00a2\u0006\u000e\u0008\u00a3\u0001\u0012\t\u0008A\u0012\u0005\u0008\u0008(\u00a5\u0001\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00a0\u00012\u000b\u0008\u0002\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u00072\t\u0008\u0002\u0010\u009c\u0001\u001a\u0002002\t\u0008\u0002\u0010\u00a6\u0001\u001a\u00020\u0018H\u0002J\u0007\u0010\u00a7\u0001\u001a\u00020\u0018J&\u0010\u00a8\u0001\u001a\u00030\u00a9\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00072\u0013\u0010\u00aa\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001507J2\u0010\u00ab\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u009c\u0001\u001a\u0002002\t\u0008\u0002\u0010\u00a6\u0001\u001a\u00020\u0018J\u0013\u0010\u00ac\u0001\u001a\u00020\u00182\u0008\u0010\u00ad\u0001\u001a\u00030\u00a9\u0001H\u0002J\u0013\u0010\u00ae\u0001\u001a\u00020\u00182\u0008\u0010\u00ad\u0001\u001a\u00030\u00a9\u0001H\u0002J\u001b\u0010\u00af\u0001\u001a\u00020\u00152\u0007\u0010\u00b0\u0001\u001a\u0002002\u0007\u0010\u00b1\u0001\u001a\u00020&H\u0002J\u0013\u0010\u00b2\u0001\u001a\u0002002\u0008\u0010\u00ad\u0001\u001a\u00030\u00a9\u0001H\u0002J\u0018\u0010\u00b3\u0001\u001a\u0008\u0012\u0004\u0012\u0002000)2\u0007\u0010\u00b4\u0001\u001a\u000200H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010!\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\"R\u0011\u0010$\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\"R\u000e\u0010%\u001a\u00020&X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070)0+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010U\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010\rR\u0014\u0010k\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\rR\u0014\u0010n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010\rR\u0014\u0010r\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010\rR\u0012\u0010{\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010|R\u0011\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lcom/hermes/android/BootstrapManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "filesDir",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "prefixDir",
        "Ljava/io/File;",
        "getPrefixDir",
        "()Ljava/io/File;",
        "homeDir",
        "getHomeDir",
        "tmpDir",
        "getTmpDir",
        "writerLeaseFile",
        "getWriterLeaseFile",
        "loadPoisonStateOnce",
        "",
        "currentBootId",
        "armWriterLease",
        "",
        "clearWriterLease",
        "refusingWhenPoisoned",
        "T",
        "what",
        "default",
        "block",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "isInstalled",
        "()Z",
        "isPythonInstalled",
        "isHermesInstalled",
        "logCapacity",
        "",
        "_logStream",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "logStream",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getLogStream",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "clearLog",
        "lastLogEmitMs",
        "",
        "appendLog",
        "rawLine",
        "replaceLast",
        "throttleMs",
        "install",
        "onProgress",
        "Lkotlin/Function1;",
        "Lcom/hermes/android/BootstrapManager$Progress;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createDirectories",
        "checkDiskSpace",
        "downloadAndExtractBootstrap",
        "processSymlinks",
        "lines",
        "baseDir",
        "shouldBeExecutable",
        "name",
        "file",
        "fixPaths",
        "fixTextFiles",
        "dir",
        "replacements",
        "",
        "(Ljava/io/File;[Ljava/lang/String;)V",
        "isBinaryFile",
        "fixScriptShebangs",
        "oldPrefix",
        "newPrefix",
        "createDpkgWrapper",
        "configureApt",
        "createSecondStageLock",
        "healDpkgState",
        "healDpkgStateLocked",
        "healUnderFrontendLock",
        "Lcom/hermes/android/DpkgHealPolicy$HealOutcome;",
        "statusFile",
        "dpkgFixBrokenMarker",
        "getDpkgFixBrokenMarker",
        "dpkgRepairPending",
        "sqliteRepairPending",
        "ensureDpkgRepaired",
        "Lcom/hermes/android/DpkgHealPolicy$RepairResult;",
        "ensureDpkgRepairedImpl",
        "writeFixBrokenMarker",
        "withDpkgLock",
        "lockRelPath",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "writeDpkgStatusAtomic",
        "content",
        "installPythonBundle",
        "assetName",
        "installPythonBundleLocked",
        "installPipFromBundle",
        "installPipFromBundleLocked",
        "installPatches",
        "installCoreDeps",
        "Lkotlin/Pair;",
        "installCoreDepsLocked",
        "coreDepsMarker",
        "getCoreDepsMarker",
        "coreDepsMigrationPending",
        "runtimePatchesMarker",
        "getRuntimePatchesMarker",
        "runtimePatchesRefreshPending",
        "ensureRuntimePatchesCurrent",
        "openSslMarker",
        "getOpenSslMarker",
        "openSslRefreshPending",
        "ensureOpenSslCurrent",
        "refreshOpenSslFromAssetsLocked",
        "ensureCoreDepsCurrent",
        "installHermesAgent",
        "forceWheels",
        "installHermesAgentLocked",
        "edgeInstalledCache",
        "Ljava/lang/Boolean;",
        "invalidateEdgeCache",
        "isEdgeInstalled",
        "installEdgeFeatures",
        "installEdgeFeaturesImpl",
        "getInstalledVersion",
        "cachedBundledVersion",
        "getBundledVersion",
        "isVersionNewer",
        "a",
        "b",
        "recoverInterruptedUpgrade",
        "needsBundleUpgrade",
        "upgradeBundleFromApk",
        "classifyUpdateRc",
        "Lcom/hermes/android/BootstrapManager$UpdateError;",
        "rc",
        "resolveLatestReleaseTag",
        "checkRemoteVersion",
        "checkForUpdate",
        "Lcom/hermes/android/BootstrapManager$UpdateInfo;",
        "performUpdate",
        "performUpdateImpl",
        "healthCheck",
        "Lcom/hermes/android/BootstrapManager$HealthReport;",
        "repair",
        "fullReinstall",
        "ensureSqlite",
        "patchPydanticVersionCheck",
        "patchPydanticVersionCheckLocked",
        "runInTermuxPkg",
        "command",
        "timeoutMs",
        "runWithRetryPkg",
        "maxAttempts",
        "onRetry",
        "Lkotlin/Function2;",
        "cleanupOnRetry",
        "runWithRetry",
        "Lkotlin/ParameterName;",
        "attempt",
        "lastError",
        "mutatesPrefix",
        "hasNetwork",
        "runInTermuxStreaming",
        "Ljava/lang/Process;",
        "onLine",
        "runInTermux",
        "killProcessTreeOnTimeout",
        "process",
        "reapDirectChild",
        "sig",
        "pid",
        "signal",
        "pidOf",
        "collectDescendants",
        "root",
        "LeaseVerdict",
        "LeaseBootIds",
        "Companion",
        "Progress",
        "UpdateError",
        "UpdateInfo",
        "HealthReport",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final ABI_TO_BOOTSTRAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOOTSTRAP_BASE_URL:Ljava/lang/String; = "https://github.com/termux/termux-packages/releases/download/bootstrap-2026.02.12-r1%2Bapt.android-7"

.field private static final BOOTSTRAP_RELEASE:Ljava/lang/String; = "bootstrap-2026.02.12-r1%2Bapt.android-7"

.field private static final BOOT_UUID_RE:Lkotlin/text/Regex;

.field private static final BTIME_RE:Lkotlin/text/Regex;

.field public static final CORE_DEPS_LOSER_WAIT_CAP_MS:J = 0x124f80L

.field public static final CORE_DEPS_PIP_TIMEOUT_MS:J = 0x493e0L

.field private static final CORE_DEPS_REVISION:I = 0x2

.field public static final Companion:Lcom/hermes/android/BootstrapManager$Companion;

.field private static final DPKG_CORE_PKGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DPKG_LOCK_BACKEND:Ljava/lang/String; = "var/lib/dpkg/lock"

.field private static final DPKG_LOCK_FRONTEND:Ljava/lang/String; = "var/lib/dpkg/lock-frontend"

.field public static final KILL_VERIFY_TIMEOUT_MS:J = 0x3a98L

.field private static final MIN_SPACE_MB:I = 0x1f4

.field private static final OPENSSL_BUNDLE_REVISION:Ljava/lang/String; = "3.6.3"

.field private static final OPENSSL_LIB_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PY_NET_ERR_CLASSIFIER:Ljava/lang/String; = "except socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n"

.field private static final RUNTIME_PATCHES_REVISION:I = 0x2

.field private static final SAFE_PKG_NAME:Lkotlin/text/Regex;

.field private static final SAFE_TAG:Lkotlin/text/Regex;

.field private static final TAG:Ljava/lang/String; = "BootstrapManager"

.field private static final UPSTREAM_REPO:Ljava/lang/String; = "NousResearch/hermes-agent"

.field private static final coreDepsMigrationInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final packageOpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final packageSubsystemPoisoned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final poisonStateLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final _logStream:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private cachedBundledVersion:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private volatile edgeInstalledCache:Ljava/lang/Boolean;

.field private final filesDir:Ljava/lang/String;

.field private final homeDir:Ljava/io/File;

.field private volatile lastLogEmitMs:J

.field private final logCapacity:I

.field private final logStream:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final prefixDir:Ljava/io/File;

.field private final tmpDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$04h7rE_FJ2N4MNXND5Cy_HRz0sE(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->ensureSqlite$lambda$116$lambda$115(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2k4qwVMhvY315paK6mEtjH5HYr4()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$lambda$120()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$4Op6OcEW1M73Ea1PN_2Kbialr08(Lkotlin/jvm/functions/Function1;IILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/BootstrapManager;->repair$lambda$112(Lkotlin/jvm/functions/Function1;IILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4geLKEa435Q4WNUQjMRQZ7o9p_E()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->installPythonBundle$lambda$38()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$54gxPFrOtcm_iJMnBzGds_7xNOQ(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheck$lambda$118(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5kxTthPo4_0Yqrg4Aut9EM0Bqls(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->healDpkgStateLocked$lambda$30(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7NiT4DYliaIfBnr5wS8bXwBD1zQ(Lcom/hermes/android/BootstrapManager;)Z
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureCoreDepsCurrent$lambda$80(Lcom/hermes/android/BootstrapManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A072Q49kKz39qswNEXNj7HWMY-o(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureOpenSslCurrent$lambda$72(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AhXFr9oykqjsbxUpyBKc5BANntY(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->installHermesAgentLocked$lambda$87(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CVQpwBrPGDtEPwtpRQFoKo7zK9c(Lcom/hermes/android/BootstrapManager;)Z
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureRuntimePatchesCurrent$lambda$65(Lcom/hermes/android/BootstrapManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E7G5G2DY2J9yKhX2QWBELmFmPw8(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->performUpdateImpl$lambda$102(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GD2rxjmoYuMJ2jmD1Ok9l5PYDCA()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheck$lambda$117()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$GGCEnQGPaa4ZMQmNk5Jma76IMFI(Lcom/hermes/android/BootstrapManager;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->installHermesAgent$lambda$83(Lcom/hermes/android/BootstrapManager;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H3N3Zrj-_SG7ORTXlbgG8IJ5WTI(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->repair$lambda$113(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hhmo_SF3wXAqxe_100EKkimPKbM(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->installCoreDepsLocked$lambda$58(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I7Q8k4u-GSP8X93NfRXY81NboKk(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->fixTextFiles$lambda$17(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I8B0e2C7p2_PMS3K9ym2Evs6868(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureSqlite$lambda$116$lambda$114(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ij6Z6W_Kh_IKQf2wc41RvH_OEFo()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->healDpkgState$lambda$28()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$LIGdwQeFQPbZ4wyb3bXDWtOpiLg(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->installPipFromBundle$lambda$44(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N2DpdsQVzHVxoS3pPxmtpXMJaUk(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->install$lambda$9(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QFgoxl7YupuDXJULcjb60kyDYJs(Lcom/hermes/android/BootstrapManager;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureRuntimePatchesCurrent$lambda$68(Lcom/hermes/android/BootstrapManager;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TXGia5v2J3rwojanpMuZnz7tF1c(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->healDpkgStateLocked$lambda$31(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W6FHA5qyBA2f9ofDl5WJqBd9c6c(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->installPythonBundle$lambda$39(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W_3zb_jqkDqDOkfqEGNjbFVrd_s(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/hermes/android/BootstrapManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/BootstrapManager;->runInTermux$lambda$131(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/hermes/android/BootstrapManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XmjRDfZjgcTxeabtK_OA0nahaSU()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->installHermesAgent$lambda$82()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$Y9ywycGpzFRrkXYfTlpivrPtxsg(Lcom/hermes/android/BootstrapManager;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->installCoreDeps$lambda$57(Lcom/hermes/android/BootstrapManager;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bQzU2oiWtKTVAA3d64RslIXCY9Q()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->installCoreDeps$lambda$56()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$bYGeB1SlAouzgfhTxAgc5e3-VB4()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->installPipFromBundle$lambda$43()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$cmZms3jmRTzrZyWjs3yxP8z_DKY(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;J)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$lambda$121(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;J)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g29AGq4GDfdHCX4j5l4GIZXbRX8(Ljava/io/File;Lcom/hermes/android/BootstrapManager;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/BootstrapManager;->healUnderFrontendLock$lambda$35(Ljava/io/File;Lcom/hermes/android/BootstrapManager;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gcev3y1EXu-BzmA1NgK9z07PzjY(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg$lambda$123(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lRUN0lWlpZWX9_TIJI4xFO83-ns(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->install$lambda$8(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$odi3vOR1jqgSjZR6LrPJhT-fzZE(Ljava/lang/Process;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/BootstrapManager;->runInTermuxStreaming$lambda$126(Ljava/lang/Process;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tm445VEa9v5E3yc1TjvBGbpsZ_4(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState$lambda$29(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uzdCdVSCcYHdtkBI0MdMi9qXJ00(Lcom/hermes/android/BootstrapManager;)Z
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureOpenSslCurrent$lambda$71(Lcom/hermes/android/BootstrapManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wHb6CtGwRy27ho7x30qob2XicNc()Z
    .locals 1

    invoke-static {}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg$lambda$122()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$y1ZmspbTRxGOp4vLfgoiAQeEzQ4(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/BootstrapManager;->ensureCoreDepsCurrent$lambda$81(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/hermes/android/BootstrapManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/BootstrapManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/BootstrapManager;->$stable:I

    .line 82
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[A-Za-z0-9._-]+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->SAFE_TAG:Lkotlin/text/Regex;

    const/4 v0, 0x5

    .line 86
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "python"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "python3"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "git"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "libsqlite"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "ca-certificates"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/hermes/android/BootstrapManager;->DPKG_CORE_PKGS:Ljava/util/Set;

    .line 89
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^[a-z0-9][a-z0-9.+-]*$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/hermes/android/BootstrapManager;->SAFE_PKG_NAME:Lkotlin/text/Regex;

    .line 98
    new-array v1, v5, [Lkotlin/Pair;

    const-string v2, "arm64-v8a"

    const-string v8, "aarch64"

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v3

    .line 99
    const-string/jumbo v2, "x86_64"

    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v4

    .line 97
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/hermes/android/BootstrapManager;->ABI_TO_BOOTSTRAP:Ljava/util/Map;

    .line 144
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lib/libcrypto.so.3"

    aput-object v1, v0, v3

    .line 145
    const-string v1, "lib/libssl.so.3"

    aput-object v1, v0, v4

    .line 146
    const-string v1, "lib/ossl-modules/legacy.so"

    aput-object v1, v0, v5

    .line 147
    const-string v1, "lib/engines-3/loader_attic.so"

    aput-object v1, v0, v6

    .line 148
    const-string v1, "lib/engines-3/capi.so"

    aput-object v1, v0, v7

    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/BootstrapManager;->OPENSSL_LIB_ENTRIES:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->packageOpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->packageSubsystemPoisoned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->poisonStateLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->BOOT_UUID_RE:Lkotlin/text/Regex;

    .line 213
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9]+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->BTIME_RE:Lkotlin/text/Regex;

    .line 304
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/hermes/android/BootstrapManager;->coreDepsMigrationInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager;->filesDir:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/usr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    .line 331
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/home"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    .line 332
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/tmp"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    .line 338
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->loadPoisonStateOnce()V

    const/16 p1, 0x190

    .line 429
    iput p1, p0, Lcom/hermes/android/BootstrapManager;->logCapacity:I

    .line 430
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager;->_logStream:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 431
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager;->logStream:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getABI_TO_BOOTSTRAP$cp()Ljava/util/Map;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->ABI_TO_BOOTSTRAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getBOOT_UUID_RE$cp()Lkotlin/text/Regex;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->BOOT_UUID_RE:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getBTIME_RE$cp()Lkotlin/text/Regex;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->BTIME_RE:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/hermes/android/BootstrapManager;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCoreDepsMigrationInFlight$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->coreDepsMigrationInFlight:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$getPackageOpLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->packageOpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getPackageSubsystemPoisoned$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->packageSubsystemPoisoned:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$getPoisonStateLoaded$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 42
    sget-object v0, Lcom/hermes/android/BootstrapManager;->poisonStateLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$installHermesAgent(Lcom/hermes/android/BootstrapManager;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->installHermesAgent(Z)V

    return-void
.end method

.method private final appendLog(Ljava/lang/String;ZJ)V
    .locals 4

    const/16 v0, 0x1f4

    .line 448
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->_logStream:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 451
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 452
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/hermes/android/BootstrapManager;->logCapacity:I

    if-lt v2, v3, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/hermes/android/BootstrapManager;->logCapacity:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 453
    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_3

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 459
    iget-wide v2, p0, Lcom/hermes/android/BootstrapManager;->lastLogEmitMs:J

    sub-long v2, v0, v2

    cmp-long p2, v2, p3

    if-gez p2, :cond_2

    .line 462
    iget-object p2, p0, Lcom/hermes/android/BootstrapManager;->_logStream:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 465
    :cond_2
    iput-wide v0, p0, Lcom/hermes/android/BootstrapManager;->lastLogEmitMs:J

    .line 467
    :cond_3
    iget-object p2, p0, Lcom/hermes/android/BootstrapManager;->_logStream:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x64

    .line 447
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->appendLog(Ljava/lang/String;ZJ)V

    return-void
.end method

.method private final armWriterLease()Z
    .locals 8

    const-string v0, "bootid="

    .line 381
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->currentBootId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 382
    const-string v3, "BootstrapManager"

    if-nez v1, :cond_0

    .line 383
    const-string v0, "cannot read boot_id (the only reliable boot-generation source); REFUSING $PREFIX writer (fail-closed: cross-process orphan protection impossible)"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 387
    :cond_0
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/hermes/android/BootstrapManager;

    .line 388
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 389
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 391
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 387
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 390
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 387
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cannot persist writer lease (disk full / IO error?): "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 392
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final checkDiskSpace()V
    .locals 4

    .line 588
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->filesDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    const/high16 v2, 0x100000

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v2, Lcom/hermes/android/R$string;->error_no_space:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final classifyUpdateRc(I)Lcom/hermes/android/BootstrapManager$UpdateError;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2441
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->UNKNOWN:Lcom/hermes/android/BootstrapManager$UpdateError;

    goto :goto_0

    .line 2437
    :pswitch_0
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->UNKNOWN:Lcom/hermes/android/BootstrapManager$UpdateError;

    goto :goto_0

    .line 2436
    :pswitch_1
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->HTTP:Lcom/hermes/android/BootstrapManager$UpdateError;

    goto :goto_0

    .line 2435
    :pswitch_2
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->SSL:Lcom/hermes/android/BootstrapManager$UpdateError;

    goto :goto_0

    .line 2434
    :pswitch_3
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->TIMEOUT:Lcom/hermes/android/BootstrapManager$UpdateError;

    goto :goto_0

    .line 2433
    :pswitch_4
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->DNS:Lcom/hermes/android/BootstrapManager$UpdateError;

    goto :goto_0

    .line 2440
    :cond_0
    sget-object p1, Lcom/hermes/android/BootstrapManager$UpdateError;->TIMEOUT:Lcom/hermes/android/BootstrapManager$UpdateError;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final clearWriterLease()V
    .locals 2

    .line 401
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/hermes/android/BootstrapManager;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BootstrapManager"

    const-string v1, "clearWriterLease: delete() returned false; lease may persist \u2192 false poison next boot"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final collectDescendants(J)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 3513
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3710
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3514
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3515
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v9, "stat"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static {v8, v5, v9, v5}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v10, 0x29

    const/4 v11, 0x2

    .line 3518
    invoke-static {v8, v10, v5, v11, v5}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v9, [Ljava/lang/String;

    const-string v5, " "

    aput-object v5, v11, v3

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 3519
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3520
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :catchall_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3522
    :cond_1
    sget-object v1, Lcom/hermes/android/ProcTree;->INSTANCE:Lcom/hermes/android/ProcTree;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/hermes/android/ProcTree;->descendants(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final configureApt()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 946
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "etc/apt/apt.conf.d"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 947
    const-string v2, "etc/apt/preferences.d"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 948
    const-string v2, "etc/dpkg/dpkg.cfg.d"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    .line 949
    const-string/jumbo v6, "var/lib/apt/lists/partial"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    .line 950
    const-string/jumbo v6, "var/cache/apt/archives/partial"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    .line 951
    const-string/jumbo v6, "var/log/apt"

    aput-object v6, v1, v2

    .line 945
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 3643
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 952
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 954
    :cond_0
    iget-object v1, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 955
    new-instance v2, Ljava/io/File;

    iget-object v6, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v7, "etc/apt/apt.conf"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 974
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n            |Dir \"/\";\n            |Dir::State \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/var/lib/apt/\";\n            |Dir::State::status \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/var/lib/dpkg/status\";\n            |Dir::Cache \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/var/cache/apt/\";\n            |Dir::Log \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/var/log/apt/\";\n            |Dir::Etc \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/etc/apt/\";\n            |Dir::Etc::trusted \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/etc/apt/trusted.gpg\";\n            |Dir::Etc::trustedparts \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/etc/apt/trusted.gpg.d/\";\n            |Dir::Bin::dpkg \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/bin/dpkg\";\n            |Dir::Bin::methods \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib/apt/methods/\";\n            |Dir::Bin::solvers \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib/apt/solvers/\";\n            |Dir::Bin::planners \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib/apt/planners/\";\n            |Dpkg::Options:: \"--force-configure-any\";\n            |Dpkg::Options:: \"--force-bad-path\";\n            |Dpkg::Options:: \"--force-confold\";\n            |Dpkg::Options:: \"--force-depends\";\n            |Dpkg::Options:: \"--instdir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\";\n            |Dpkg::Options:: \"--admindir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/var/lib/dpkg\";\n            |Acquire::AllowInsecureRepositories \"true\";\n            |Acquire::https::Verify-Peer \"false\";\n            |Acquire::https::Verify-Host \"false\";\n            |APT::Get::AllowUnauthenticated \"true\";\n        "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 979
    invoke-static {v1, v6, v4, v6}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 956
    invoke-static {v2, v1, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 982
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v7, "etc/dpkg/dpkg.cfg"

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 983
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 985
    :cond_1
    iget-object v2, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 986
    iget-object v7, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\n            |admindir="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/var/lib/dpkg\n            |instdir="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n            |force-configure-any\n            |force-bad-path\n        "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-static {v2, v6, v4, v6}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-static {v1, v2, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 993
    iget-object v1, v0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 994
    new-instance v2, Ljava/io/File;

    iget-object v7, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v8, "etc/apt/sources.list"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 996
    invoke-static {v2, v6, v4, v6}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 997
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "com.termux"

    const/4 v10, 0x0

    move-object v9, v1

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 998
    move-object v7, v13

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "[trusted=yes]"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v3, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v17, 0x4

    const/16 v18, 0x0

    .line 999
    const-string v14, "deb "

    const-string v15, "deb [trusted=yes] "

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1001
    :cond_2
    invoke-static {v2, v13, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 1008
    :cond_3
    iget-object v2, v0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "/data/data/"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    :cond_5
    new-array v1, v5, [Ljava/lang/String;

    const-string v7, "etc/profile"

    aput-object v7, v1, v3

    const-string v7, "etc/bash.bashrc"

    aput-object v7, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 3645
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v13, "/data/data/com.termux"

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1010
    new-instance v14, Ljava/io/File;

    iget-object v8, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-direct {v14, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v14, v6, v4, v6}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v8, v13

    move-object v9, v2

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    goto :goto_1

    .line 1013
    :cond_7
    new-instance v1, Ljava/io/File;

    iget-object v7, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v8, "etc/profile.d"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 3647
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 3648
    array-length v8, v1

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_b

    aget-object v10, v1, v9

    .line 1014
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getName(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, ".sh"

    invoke-static {v11, v14, v3, v5, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, ".csh"

    invoke-static {v11, v12, v3, v5, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 3648
    :cond_9
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3649
    :cond_b
    check-cast v7, Ljava/util/List;

    .line 1013
    check-cast v7, Ljava/lang/Iterable;

    .line 3650
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1015
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v6, v4, v6}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v8, v13

    move-object v9, v2

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method private final createDirectories()V
    .locals 4

    const/4 v0, 0x6

    .line 580
    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    aput-object v2, v0, v1

    .line 581
    sget-object v1, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/hermes/android/HermesPaths;->hermesHome(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 582
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v3, ".hermes-android/patches"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 583
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v3, ".hermes-android/bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 580
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3630
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 584
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final createDpkgWrapper()V
    .locals 7

    .line 869
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "bin/dpkg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 870
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "bin/dpkg.real"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "BootstrapManager"

    if-nez v2, :cond_0

    .line 873
    const-string v0, "dpkg binary not found, skipping wrapper creation"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 878
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    const-string v0, "dpkg wrapper already exists"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 884
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 885
    const-string v0, "Failed to rename dpkg to dpkg.real"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 888
    invoke-virtual {v1, v2, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 893
    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n            |#!/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/bin/bash\n            |# dpkg wrapper: suppress confdir errors from hardcoded com.termux paths.\n            |# Uses only bash builtins \u2014 no grep/rm/cat dependency.\n            |\n            |export PATH=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/bin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/bin/applets:$PATH\"\n            |_realPath=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/bin/dpkg.real\"\n            |_errtmp=\"${TMPDIR:-/tmp}/dpkg-err.$$\"\n            |\n            |\"$_realPath\" \"$@\" 2>\"$_errtmp\"\n            |_rc=$?\n            |\n            |if [ $_rc -ne 0 ]; then\n            |    # Read stderr and check if it\'s only dpkg.cfg.d errors (bash builtins only)\n            |    _has_real_error=0\n            |    while IFS= read -r _line; do\n            |        [[ -z \"$_line\" ]] && continue\n            |        [[ \"$_line\" == *\"dpkg.cfg.d\"* ]] && continue\n            |        [[ \"$_line\" == *\"configuration directory\"* ]] && continue\n            |        # Found a real error line\n            |        _has_real_error=1\n            |        echo \"$_line\" >&2\n            |    done < \"$_errtmp\"\n            |    rm -f \"$_errtmp\" 2>/dev/null\n            |    if [ $_has_real_error -eq 0 ]; then\n            |        exit 0\n            |    fi\n            |    exit $_rc\n            |fi\n            |\n            |# Success \u2014 filter harmless warnings\n            |if [ -s \"$_errtmp\" ]; then\n            |    while IFS= read -r _line; do\n            |        [[ -z \"$_line\" ]] && continue\n            |        [[ \"$_line\" == *\"dpkg.cfg.d\"* ]] && continue\n            |        [[ \"$_line\" == *\"configuration directory\"* ]] && continue\n            |        echo \"$_line\" >&2\n            |    done < \"$_errtmp\"\n            |fi\n            |rm -f \"$_errtmp\" 2>/dev/null\n            |exit 0\n        "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 935
    invoke-static {v1, v5, v2, v5}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    .line 894
    invoke-static {v0, v1, v5, v6, v5}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 936
    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 938
    const-string v0, "Created dpkg wrapper script (real binary at dpkg.real)"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final createSecondStageLock()V
    .locals 3

    .line 1022
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "etc/termux/termux-bootstrap/second-stage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1024
    new-instance v1, Ljava/io/File;

    const-string v2, "termux-bootstrap-second-stage.sh.lock"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1026
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/dev/null"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final currentBootId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 368
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/BootstrapManager;

    .line 369
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hermes/android/BootstrapManager;->BOOT_UUID_RE:Lkotlin/text/Regex;

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 368
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 370
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final downloadAndExtractBootstrap()V
    .locals 14

    .line 598
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/BootstrapManager$Companion;->detectTermuxArch()Ljava/lang/String;

    move-result-object v0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bootstrap-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://github.com/termux/termux-packages/releases/download/bootstrap-2026.02.12-r1%2Bapt.android-7/bootstrap-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v4, "SUPPORTED_ABIS"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    const/16 v12, 0x3f

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bootstrap target arch="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (ABIs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BootstrapManager"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Asset "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found, downloading from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v5, 0x1e

    .line 609
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v5, 0x5

    .line 610
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 612
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 617
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 607
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 621
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->filesDir:Ljava/lang/String;

    const-string/jumbo v5, "usr-staging"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 626
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 628
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v5, Ljava/io/Closeable;

    :try_start_1
    move-object v0, v5

    check-cast v0, Ljava/util/zip/ZipInputStream;

    .line 629
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 631
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SYMLINKS.txt"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 634
    move-object v6, v0

    check-cast v6, Ljava/io/InputStream;

    invoke-static {v6}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 635
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 3632
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 3633
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 635
    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3633
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3634
    :cond_1
    check-cast v8, Ljava/util/List;

    .line 635
    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 636
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " symlink entries from SYMLINKS.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 637
    :cond_3
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_5

    .line 638
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 640
    :cond_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v10, v9

    check-cast v10, Ljava/io/FileOutputStream;

    move-object v11, v0

    check-cast v11, Ljava/io/InputStream;

    check-cast v10, Ljava/io/OutputStream;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v11, v10, v13, v12, v7}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v9, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 643
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, v8}, Lcom/hermes/android/BootstrapManager;->shouldBeExecutable(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    .line 644
    invoke-virtual {v8, v6, v13}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 640
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 647
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    goto/16 :goto_1

    .line 649
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 628
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 652
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 653
    invoke-direct {p0, v0, v1}, Lcom/hermes/android/BootstrapManager;->processSymlinks(Ljava/util/List;Ljava/io/File;)V

    .line 657
    :cond_7
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 658
    :cond_8
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v5, "bin/bash"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Bootstrap extracted to "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (bash exists: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to rename "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 628
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 617
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v2, Lcom/hermes/android/R$string;->error_bootstrap_download:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v3, Lcom/hermes/android/R$string;->error_bootstrap_download:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final ensureCoreDepsCurrent$lambda$80(Lcom/hermes/android/BootstrapManager;)Z
    .locals 0

    .line 1793
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->coreDepsMigrationPending()Z

    move-result p0

    return p0
.end method

.method private static final ensureCoreDepsCurrent$lambda$81(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 3

    .line 1794
    const-string v0, "Core deps revision outdated (\u2192 2), migrating\u2026"

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->installCoreDepsLocked()Lkotlin/Pair;

    move-result-object p0

    .line 1796
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Core deps migration failed (retry next launch/generation): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final ensureDpkgRepairedImpl()Lcom/hermes/android/DpkgHealPolicy$RepairResult;
    .locals 9

    .line 1226
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->dpkgRepairPending()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->NOT_PENDING:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    return-object v0

    .line 1227
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string/jumbo v2, "var/lib/dpkg/status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "BootstrapManager"

    if-nez v0, :cond_1

    .line 1233
    const-string v0, "dpkg repair pending but status DB missing \u2014 bootstrap damaged; deferring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 1234
    const-string v3, "[dpkg-heal] dpkg database missing; run Repair (or reinstall) to rebuild the environment"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1235
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->DEFERRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    return-object v0

    .line 1237
    :cond_1
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->hasNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1238
    const-string v0, "dpkg repair deferred: offline (retry next launch)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->DEFERRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    return-object v0

    .line 1241
    :cond_2
    const-string v0, "dpkg fix-broken marker present; running heal to repair dependency graph"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState()V

    .line 1243
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->dpkgRepairPending()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/DpkgHealPolicy;->repairResult(ZZ)Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    move-result-object v0

    return-object v0
.end method

.method private static final ensureOpenSslCurrent$lambda$71(Lcom/hermes/android/BootstrapManager;)Z
    .locals 0

    .line 1682
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->openSslRefreshPending()Z

    move-result p0

    return p0
.end method

.method private static final ensureOpenSslCurrent$lambda$72(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 2

    .line 1683
    const-string v0, "BootstrapManager"

    const-string v1, "OpenSSL bundle revision outdated (\u2192 3.6.3), refreshing from assets\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->refreshOpenSslFromAssetsLocked()V

    .line 1685
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final ensureRuntimePatchesCurrent$lambda$65(Lcom/hermes/android/BootstrapManager;)Z
    .locals 0

    .line 1642
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->runtimePatchesRefreshPending()Z

    move-result p0

    return p0
.end method

.method private static final ensureRuntimePatchesCurrent$lambda$68(Lcom/hermes/android/BootstrapManager;)Ljava/lang/Object;
    .locals 5

    const-string v0, "patches marker write failed: "

    .line 1643
    const-string v1, "Runtime patches outdated (\u2192 rev 2), refreshing from assets\u2026"

    const-string v2, "BootstrapManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :try_start_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->installPatches()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getRuntimePatchesMarker()Ljava/io/File;

    move-result-object p0

    const-string v1, "2"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v3, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1647
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_0
    const-string p0, "Runtime patches refreshed to rev 2"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1650
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runtime patches refresh failed (retry next launch): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final ensureSqlite$lambda$116$lambda$114(Ljava/io/File;)Z
    .locals 0

    .line 2974
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final ensureSqlite$lambda$116$lambda$115(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Z
    .locals 6

    .line 2975
    const-string v0, "libsqlite3.so not found, installing..."

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState()V

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    if-le v2, v0, :cond_0

    .line 2983
    :try_start_0
    const-string v3, "dpkg --configure -a 2>&1 || true ; apt update 2>&1 || true"

    const-wide/32 v4, 0xea60

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    .line 2985
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState()V

    .line 2987
    :cond_0
    const-string v3, "apt install -y libsqlite 2>&1"

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    .line 2988
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "libsqlite installed successfully (attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2992
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "libsqlite still missing after attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2996
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ensureSqlite attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2994
    throw p0

    .line 2999
    :cond_2
    const-string p0, "libsqlite install failed after 3 attempts; sqlite3 unavailable"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private final fixPaths()V
    .locals 24

    move-object/from16 v1, p0

    .line 733
    const-string v2, "BootstrapManager"

    .line 734
    iget-object v0, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 736
    iget-object v3, v1, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 737
    const-string v10, "/data/data/com.termux"

    .line 738
    iget-object v4, v1, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 739
    :cond_0
    iget-object v4, v1, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v11, v4

    .line 742
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string/jumbo v6, "var/lib/dpkg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x4

    new-array v5, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/data/data/com.termux/files/usr"

    aput-object v14, v5, v13

    const/4 v15, 0x1

    aput-object v0, v5, v15

    const/4 v9, 0x2

    const-string v16, "/data/data/com.termux/files/home"

    aput-object v16, v5, v9

    const/16 v17, 0x3

    aput-object v3, v5, v17

    invoke-direct {v1, v4, v5}, Lcom/hermes/android/BootstrapManager;->fixTextFiles(Ljava/io/File;[Ljava/lang/String;)V

    .line 744
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string/jumbo v6, "var/lib/dpkg/info"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 746
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3635
    array-length v7, v8

    move v6, v13

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v5, v8, v6

    .line 748
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/32 v20, 0x4c4b40

    cmp-long v4, v18, v20

    if-gez v4, :cond_2

    .line 749
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-static {v5, v4, v15, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 750
    move-object/from16 v15, v18

    check-cast v15, Ljava/lang/CharSequence;

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v15, v12, v13, v9, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v12, :cond_2

    const/4 v12, 0x4

    const/4 v15, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move-object/from16 v4, v18

    move-object/from16 v22, v5

    move-object v5, v10

    move/from16 v18, v6

    move-object v6, v11

    move/from16 v23, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move v8, v12

    move v12, v9

    move-object v9, v15

    .line 751
    :try_start_1
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    .line 752
    invoke-static {v5, v4, v13, v12, v13}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :cond_2
    move/from16 v18, v6

    move/from16 v23, v7

    move-object/from16 v21, v8

    move v12, v9

    :catch_1
    :goto_1
    add-int/lit8 v6, v18, 0x1

    move v9, v12

    move-object/from16 v8, v21

    move/from16 v7, v23

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    move v12, v9

    .line 760
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v6, "etc"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v8, 0x1

    aput-object v0, v6, v8

    aput-object v16, v6, v12

    aput-object v3, v6, v17

    invoke-direct {v1, v4, v6}, Lcom/hermes/android/BootstrapManager;->fixTextFiles(Ljava/io/File;[Ljava/lang/String;)V

    .line 762
    new-instance v4, Ljava/io/File;

    iget-object v6, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v9, "libexec/git-core"

    invoke-direct {v4, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/String;

    aput-object v14, v5, v7

    aput-object v0, v5, v8

    aput-object v16, v5, v12

    aput-object v3, v5, v17

    invoke-direct {v1, v4, v5}, Lcom/hermes/android/BootstrapManager;->fixTextFiles(Ljava/io/File;[Ljava/lang/String;)V

    .line 764
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v5, "bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v14, v0}, Lcom/hermes/android/BootstrapManager;->fixScriptShebangs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v5, "sbin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v3, v14, v0}, Lcom/hermes/android/BootstrapManager;->fixScriptShebangs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v4, "data/data/com.termux/files"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 773
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "usr"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 774
    new-instance v4, Ljava/io/File;

    const-string v5, "home"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 775
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "../../../../"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "../../../../home"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_5
    const-string v0, "Created Termux path redirect symlinks"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Redirect symlink failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private final fixScriptShebangs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 834
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 836
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 3641
    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v0, v1, v4

    .line 837
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    goto :goto_2

    .line 838
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 840
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/io/FileInputStream;

    const/4 v8, 0x2

    .line 841
    new-array v9, v8, [B

    .line 842
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    if-eq v7, v8, :cond_2

    :try_start_2
    invoke-static {v6, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 843
    :cond_2
    :try_start_3
    aget-byte v7, v9, v2

    const/16 v11, 0x23

    if-ne v7, v11, :cond_4

    const/4 v7, 0x1

    aget-byte v9, v9, v7

    const/16 v11, 0x21

    if-eq v9, v11, :cond_3

    goto :goto_1

    .line 844
    :cond_3
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 840
    :try_start_4
    invoke-static {v6, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 846
    invoke-static {v0, v10, v7, v10}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 847
    move-object v6, v11

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v2, v8, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 848
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 849
    invoke-static {v0, v6, v10, v8, v10}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 843
    :cond_4
    :goto_1
    invoke-static {v6, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 840
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move v2, v5

    .line 854
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fixed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " script shebangs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final varargs fixTextFiles(Ljava/io/File;[Ljava/lang/String;)V
    .locals 13

    .line 784
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    .line 786
    invoke-static {p1}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/Sequence;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda3;-><init>()V

    .line 787
    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 3637
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 795
    :try_start_0
    invoke-direct {p0, v1}, Lcom/hermes/android/BootstrapManager;->isBinaryFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 796
    invoke-static {v1, v3, v2, v3}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 798
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v4

    move v4, v6

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .line 799
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v8, v11, v6, v0, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v4, 0x0

    move-object v8, v9

    move-object v9, v10

    move v10, v4

    .line 800
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move v4, v2

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_1

    .line 804
    invoke-static {v1, v7, v3, v0, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static final fixTextFiles$lambda$17(Ljava/io/File;)Z
    .locals 6

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".list"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".conf"

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".sh"

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "status"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "profile"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".bashrc"

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final getCoreDepsMarker()Ljava/io/File;
    .locals 3

    .line 1610
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/core-deps-rev"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getDpkgFixBrokenMarker()Ljava/io/File;
    .locals 3

    .line 1193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/dpkg-fixbroken-pending"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getOpenSslMarker()Ljava/io/File;
    .locals 3

    .line 1660
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/openssl-rev"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getRuntimePatchesMarker()Ljava/io/File;
    .locals 3

    .line 1623
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/patches-rev"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getWriterLeaseFile()Ljava/io/File;
    .locals 3

    .line 336
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/package-writer-inflight"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final healDpkgState()V
    .locals 4

    .line 1059
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda5;-><init>()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda6;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method private static final healDpkgState$lambda$28()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final healDpkgState$lambda$29(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    .line 1059
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->healDpkgStateLocked()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final healDpkgStateLocked()V
    .locals 14

    .line 1062
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string/jumbo v2, "var/lib/dpkg/status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1071
    :cond_0
    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda16;-><init>(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)V

    const-string/jumbo v2, "var/lib/dpkg/lock-frontend"

    invoke-direct {p0, v2, v1}, Lcom/hermes/android/BootstrapManager;->withDpkgLock(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    if-nez v1, :cond_1

    return-void

    .line 1081
    :cond_1
    sget-object v3, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    .line 1082
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getDpkgFixBrokenMarker()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    .line 1083
    sget-object v5, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->FORCE_REMOVED:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    const/4 v6, 0x1

    if-ne v1, v5, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1081
    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/hermes/android/DpkgHealPolicy;->shouldRunFixBroken(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v12, 0x6

    const/4 v13, 0x0

    .line 1084
    const-string v8, "[dpkg-heal] repairing dependency graph after forced removal (apt --fix-broken install)"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1085
    const-string v1, "apt-get -y -f install 2>&1"

    const-wide/32 v3, 0x493e0

    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dpkg-heal: apt --fix-broken install rc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; marker kept for retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootstrapManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_4
    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda17;-><init>(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)V

    invoke-direct {p0, v2, v3}, Lcom/hermes/android/BootstrapManager;->withDpkgLock(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    if-nez v0, :cond_5

    .line 1092
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->UNCONFIRMED:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    .line 1093
    :cond_5
    sget-object v2, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    invoke-virtual {v2, v1, v0}, Lcom/hermes/android/DpkgHealPolicy;->mayClearFixBrokenMarker(ILcom/hermes/android/DpkgHealPolicy$HealOutcome;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1094
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getDpkgFixBrokenMarker()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1095
    const-string v2, "[dpkg-heal] dependency graph repaired; pending marker cleared"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private static final healDpkgStateLocked$lambda$30(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;
    .locals 0

    .line 1071
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->healUnderFrontendLock(Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    move-result-object p0

    return-object p0
.end method

.method private static final healDpkgStateLocked$lambda$31(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;
    .locals 0

    .line 1091
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->healUnderFrontendLock(Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    move-result-object p0

    return-object p0
.end method

.method private final healUnderFrontendLock(Ljava/io/File;)Lcom/hermes/android/DpkgHealPolicy$HealOutcome;
    .locals 14

    .line 1106
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/BootstrapManager$Companion;->isPackageSubsystemPoisoned()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->UNCONFIRMED:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    return-object p1

    .line 1107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1108
    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, v0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/hermes/android/BootstrapManager;Ljava/util/List;)V

    const-string/jumbo p1, "var/lib/dpkg/lock"

    invoke-direct {p0, p1, v1}, Lcom/hermes/android/BootstrapManager;->withDpkgLock(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 1141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->UNCONFIRMED:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    return-object p1

    .line 1144
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1146
    sget-object v4, Lcom/hermes/android/BootstrapManager;->SAFE_PKG_NAME:Lkotlin/text/Regex;

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "BootstrapManager"

    if-nez v4, :cond_3

    .line 1147
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dpkg-heal: skip removal of suspicious package name \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1150
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[dpkg-heal] removing broken package: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1151
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string/jumbo v7, "var/lib/dpkg/info"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x4

    .line 1152
    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "preinst"

    aput-object v7, v6, v0

    const-string v7, "postinst"

    aput-object v7, v6, v1

    const/4 v7, 0x2

    const-string v8, "prerm"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "postrm"

    aput-object v8, v6, v7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1153
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1156
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DPKG_FRONTEND_LOCKED=1 dpkg --remove --force-remove-reinstreq "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 2>&1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v7, 0xea60

    .line 1155
    invoke-virtual {p0, v4, v7, v8, v1}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v9, :cond_2

    const/16 v10, 0xc8

    .line 1159
    invoke-static {v4, v10}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "dpkg-heal: remove "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed (rc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "): "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    sget-object v9, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    invoke-virtual {v9, v4}, Lcom/hermes/android/DpkgHealPolicy;->escalateToForceDepends(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "[dpkg-heal] "

    if-eqz v4, :cond_7

    .line 1168
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->writeFixBrokenMarker()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[dpkg-heal] cannot persist repair marker; deferring "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to next round"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1173
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "DPKG_FRONTEND_LOCKED=1 dpkg --remove --force-remove-reinstreq --force-depends "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1172
    invoke-virtual {p0, v4, v7, v8, v1}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v6, :cond_6

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed with --force-depends (rdepends were already broken)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    move v2, v1

    goto/16 :goto_0

    .line 1179
    :cond_6
    invoke-static {v4, v10}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dpkg-heal: force-depends remove "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removal failed; leaving for next attempt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1183
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removal failed (non-dependency); leaving for next attempt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 1187
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->FORCE_REMOVED:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    goto :goto_2

    .line 1188
    :cond_9
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->CLEAN:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    :goto_2
    return-object p1
.end method

.method private static final healUnderFrontendLock$lambda$35(Ljava/io/File;Lcom/hermes/android/BootstrapManager;Ljava/util/List;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 1109
    const-string v1, "\n\n"

    const-string v2, "BootstrapManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1110
    :try_start_0
    invoke-static {v0, v5, v4, v5}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v4, [Ljava/lang/String;

    aput-object v1, v8, v3

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1112
    check-cast v6, Ljava/lang/Iterable;

    .line 3712
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 3713
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 3714
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .line 1113
    move-object v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v9

    .line 3715
    invoke-interface {v9}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "Status: "

    const/4 v13, 0x2

    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    .line 1113
    invoke-static {v14, v12, v3, v13, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_1
    move-object v11, v5

    :goto_1
    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_2

    move v9, v4

    goto/16 :goto_5

    .line 1115
    :cond_2
    move-object v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v9

    .line 3717
    invoke-interface {v9}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v15, "Package: "

    if-eqz v14, :cond_4

    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v4, v14

    check-cast v4, Ljava/lang/String;

    .line 1115
    invoke-static {v4, v15, v3, v13, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move-object v14, v5

    :goto_3
    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 1116
    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1115
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1118
    sget-object v9, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    sget-object v14, Lcom/hermes/android/BootstrapManager;->DPKG_CORE_PKGS:Ljava/util/Set;

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v9, v11, v14}, Lcom/hermes/android/DpkgHealPolicy;->classify(Ljava/lang/String;Z)Lcom/hermes/android/DpkgHealPolicy$Action;

    move-result-object v9

    sget-object v14, Lcom/hermes/android/BootstrapManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v9}, Lcom/hermes/android/DpkgHealPolicy$Action;->ordinal()I

    move-result v9

    aget v9, v14, v9

    const/4 v15, 0x1

    if-eq v9, v15, :cond_6

    if-eq v9, v13, :cond_5

    goto :goto_4

    .line 1125
    :cond_5
    move-object/from16 v9, p2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4
    move v9, v15

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 1121
    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dpkg-heal: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " \'"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\' \u2192 installed"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v12, "Status: install ok installed"

    const/4 v14, 0x4

    const/4 v4, 0x0

    const/4 v13, 0x0

    move v9, v15

    move-object v15, v4

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_5

    :cond_7
    const/4 v9, 0x1

    .line 3714
    :goto_5
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v9

    goto/16 :goto_0

    :cond_8
    move v9, v4

    .line 3719
    check-cast v7, Ljava/util/List;

    if-lez v8, :cond_9

    .line 1132
    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v1

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-direct {v4, v0, v1}, Lcom/hermes/android/BootstrapManager;->writeDpkgStatusAtomic(Ljava/io/File;Ljava/lang/String;)V

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dpkg-heal] marked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interrupted package(s) as installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v16}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    move v3, v9

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "healDpkgState: status surgery failed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return v3
.end method

.method private static final install$lambda$8(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    new-instance p4, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object p2, p2, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v0, Lcom/hermes/android/R$string;->step_5:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network retry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/3 (apt update)..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x5

    .line 528
    invoke-direct {p4, v0, p1, p2, p3}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final install$lambda$9(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    new-instance p4, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object p2, p2, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v0, Lcom/hermes/android/R$string;->step_5:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network retry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/3 (apt install)..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x5

    .line 538
    invoke-direct {p4, v0, p1, p2, p3}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final installCoreDeps()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1517
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda31;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "package op skipped"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda32;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method private static final installCoreDeps$lambda$56()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final installCoreDeps$lambda$57(Lcom/hermes/android/BootstrapManager;)Lkotlin/Pair;
    .locals 0

    .line 1517
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->installCoreDepsLocked()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final installCoreDepsLocked()Lkotlin/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1521
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "openai>=2.21.0,<3"

    aput-object v2, v0, v1

    .line 1522
    const-string v1, "anthropic>=0.39.0,<1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1523
    const-string v1, "python-dotenv>=1.2.1,<2"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 1524
    const-string v4, "fire>=0.7.1,<1"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 1525
    const-string v4, "httpx[socks]>=0.28.1,<1"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    .line 1526
    const-string v4, "rich>=14.3.3,<15"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    .line 1527
    const-string v4, "tenacity>=9.1.4,<10"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 1529
    const-string v4, "pyyaml>=6.0.3,<7"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    .line 1530
    const-string v4, "requests>=2.33.0,<3"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    .line 1531
    const-string v4, "jinja2>=3.1.6,<4"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    .line 1532
    const-string v4, "prompt_toolkit>=3.0.52,<4"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    .line 1533
    const-string v4, "PyJWT>=2.12.1,<3"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    .line 1534
    const-string v4, "annotated-types>=0.6.0"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    .line 1535
    const-string v4, "typing-extensions>=4.14.1"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    .line 1536
    const-string v4, "typing-inspection>=0.4.2"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    .line 1538
    const-string v4, "mcp>=1.2.0,<2"

    aput-object v4, v0, v1

    const/16 v1, 0x10

    .line 1539
    const-string v4, "honcho-ai>=2.0.1,<3"

    aput-object v4, v0, v1

    const/16 v1, 0x11

    .line 1542
    const-string v4, "croniter>=6.0.0,<7"

    aput-object v4, v0, v1

    const/16 v1, 0x12

    .line 1543
    const-string v4, "ptyprocess>=0.7.0,<1"

    aput-object v4, v0, v1

    const/16 v1, 0x13

    .line 1544
    const-string v4, "pathspec>=1.1.1,<2"

    aput-object v4, v0, v1

    const/16 v1, 0x14

    .line 1547
    const-string v4, "certifi==2026.5.20"

    aput-object v4, v0, v1

    const/16 v1, 0x15

    .line 1548
    const-string v4, "packaging==26.0"

    aput-object v4, v0, v1

    const/16 v1, 0x16

    .line 1549
    const-string/jumbo v4, "urllib3>=2.7.0,<3"

    aput-object v4, v0, v1

    const/16 v1, 0x17

    .line 1558
    const-string v4, "fastapi>=0.100,<1"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    .line 1559
    const-string/jumbo v4, "uvicorn>=0.24,<1"

    aput-object v4, v0, v1

    const/16 v1, 0x19

    .line 1560
    const-string v4, "python-multipart>=0.0.9,<1"

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    .line 1561
    const-string/jumbo v4, "websockets==15.0.1"

    aput-object v4, v0, v1

    .line 1520
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1577
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const-string v0, " "

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v10, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda30;

    invoke-direct {v10}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda30;-><init>()V

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "python3 -m pip install --prefer-binary "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2>&1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0xc

    const/4 v13, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x0

    const-wide/32 v9, 0x493e0

    const/4 v11, 0x1

    move-object v4, p0

    .line 1575
    invoke-static/range {v4 .. v13}, Lcom/hermes/android/BootstrapManager;->runWithRetry$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1594
    const-string v1, "python3 -m pip install --no-deps --prefer-binary \'ruamel.yaml>=0.18.17,<0.19\' 2>&1"

    const-wide/32 v4, 0x493e0

    .line 1593
    invoke-virtual {p0, v1, v4, v5, v2}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object v1

    .line 1598
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v4, "BootstrapManager"

    if-eqz v2, :cond_0

    .line 1599
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ruamel.yaml install failed (non-fatal): "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1604
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/BootstrapManager;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getCoreDepsMarker()Ljava/io/File;

    move-result-object v1

    const-string v2, "2"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v5}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1605
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "core-deps marker write failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static final installCoreDepsLocked$lambda$58(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic installEdgeFeatures$default(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermes/android/BootstrapManager;->installEdgeFeatures(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private final installEdgeFeaturesImpl(Lkotlin/jvm/functions/Function1;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x7

    .line 2187
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "msgpack"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2188
    const-string v2, "multidict"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2189
    const-string/jumbo v2, "yarl"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 2190
    const-string v2, "frozenlist"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 2191
    const-string v2, "propcache"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 2192
    const-string v2, "aiohttp"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const/4 v2, 0x6

    .line 2193
    const-string/jumbo v9, "websockets"

    aput-object v9, v1, v2

    .line 2186
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 2195
    const-string v2, "Preparing native dependencies..."

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v9, "): "

    const-string v10, " failed (rc="

    const-string v11, "\' 2>&1"

    const-string v12, "..."

    const-string v13, "Installing "

    const-string v14, "BootstrapManager"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2197
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "python3 -c \'import "

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "\' 2>/dev/null"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x6

    const/16 v22, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-static/range {v16 .. v22}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 2198
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v0, :cond_1

    .line 2199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "export AIOHTTP_NO_EXTENSIONS=1 MULTIDICT_NO_EXTENSIONS=1 YARL_NO_EXTENSIONS=1 FROZENLIST_NO_EXTENSIONS=1 PROPCACHE_NO_EXTENSIONS=1 MSGPACK_PUREPYTHON=1; python3 -m pip install --no-build-isolation \'"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x2

    const/16 v21, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v16, p0

    .line 2200
    invoke-static/range {v16 .. v21}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v11, :cond_2

    const/16 v12, 0x1f4

    .line 2204
    invoke-static {v7, v12}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Pre-install "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x4

    goto/16 :goto_0

    .line 2216
    :cond_3
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "exa-py==2.10.2"

    aput-object v2, v1, v3

    .line 2217
    const-string v2, "firecrawl-py==4.17.0"

    aput-object v2, v1, v4

    .line 2218
    const-string v2, "parallel-web==0.4.2"

    aput-object v2, v1, v5

    .line 2219
    const-string v2, "fal-client==0.13.1"

    aput-object v2, v1, v6

    .line 2220
    const-string v2, "edge-tts==7.2.7"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 2215
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 2223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 2224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2225
    const-string v8, ">="

    const/4 v15, 0x0

    invoke-static {v7, v8, v15, v5, v15}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v4, ">"

    invoke-static {v8, v4, v15, v5, v15}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "="

    invoke-static {v4, v8, v15, v5, v15}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    .line 2226
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "export AIOHTTP_NO_EXTENSIONS=1 MULTIDICT_NO_EXTENSIONS=1 YARL_NO_EXTENSIONS=1 FROZENLIST_NO_EXTENSIONS=1 PROPCACHE_NO_EXTENSIONS=1 MSGPACK_PUREPYTHON=1; python3 -m pip install --prefer-binary --no-build-isolation \'"

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x2

    const/16 v21, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v16, p0

    .line 2227
    invoke-static/range {v16 .. v21}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v15, :cond_5

    const/16 v5, 0x320

    .line 2231
    invoke-static {v8, v5}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "Edge dep "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2234
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_1

    .line 2239
    :cond_6
    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const-string v4, ", "

    if-nez v3, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Edge features: ALL deps failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 2242
    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/Iterable;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v25, 0x3e

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "All installs failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v0, 0x0

    return v0

    .line 2245
    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Edge features: partial success. Failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", OK: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    .line 2247
    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Iterable;

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v23, 0x3e

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Done! ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " unavailable)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    .line 2249
    const-string v1, "Done!"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheck()V

    .line 2253
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->invalidateEdgeCache()V

    .line 2254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Edge features installed (success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", failed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic installEdgeFeaturesImpl$default(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2173
    :cond_0
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->installEdgeFeaturesImpl(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private final installHermesAgent(Z)V
    .locals 4

    .line 1812
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda9;-><init>()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda10;-><init>(Lcom/hermes/android/BootstrapManager;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic installHermesAgent$default(Lcom/hermes/android/BootstrapManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1811
    :cond_0
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->installHermesAgent(Z)V

    return-void
.end method

.method private static final installHermesAgent$lambda$82()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final installHermesAgent$lambda$83(Lcom/hermes/android/BootstrapManager;Z)Lkotlin/Unit;
    .locals 0

    .line 1812
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->installHermesAgentLocked(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final installHermesAgentLocked(Z)V
    .locals 21

    move-object/from16 v11, p0

    .line 1815
    new-instance v0, Ljava/io/File;

    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/hermes-agent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    .line 1818
    new-instance v1, Ljava/io/File;

    const-string v2, "hermes_cli/web_server.py"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    move v8, v13

    :goto_0
    if-eqz v8, :cond_1

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1820
    const-string v2, "Upgrading hermes-agent to web UI version..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1822
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v14, "BootstrapManager"

    const/4 v15, 0x2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    if-eqz v8, :cond_9

    .line 1823
    :cond_2
    const-string v8, "hermes-agent-source.zip"

    .line 1824
    :try_start_0
    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1828
    const-string v2, "Extracting hermes-agent from bundled asset..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1829
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1830
    :cond_3
    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .line 1831
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    move-object v2, v3

    check-cast v2, Ljava/util/zip/ZipInputStream;

    .line 1832
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    .line 1840
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "hermes-agent/"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1841
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_6

    const-string/jumbo v6, "web/"

    invoke-static {v5, v6, v13, v15, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1842
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1844
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 1846
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1847
    :cond_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v5, v4

    check-cast v5, Ljava/io/FileOutputStream;

    move-object v6, v2

    check-cast v6, Ljava/io/InputStream;

    check-cast v5, Ljava/io/OutputStream;

    invoke-static {v6, v5, v13, v15, v10}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v4, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_6
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 1850
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1851
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    goto :goto_1

    .line 1853
    :cond_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1831
    :try_start_7
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1854
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1830
    invoke-static {v1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1855
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1856
    const-string v2, "hermes-agent extracted from bundle."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1855
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hermes-agent bundle extraction failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 1831
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 1830
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 1860
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->resolveLatestReleaseTag()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermes/android/BootstrapManager$UpdateError;

    if-eqz v2, :cond_14

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://github.com/NousResearch/hermes-agent/archive/refs/tags/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1869
    new-instance v9, Ljava/io/File;

    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    const-string v2, "hermes-agent.zip"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1870
    const-string v2, "Downloading hermes-agent from GitHub..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1875
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "python3 -c \"\nimport urllib.request, sys, os\nurl=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\nout=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\nprint(\'Downloading\', url)\nurllib.request.urlretrieve(url, out)\nprint(\'Downloaded\', os.path.getsize(out), \'bytes\')\n\" 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1881
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rm -f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " 2>&1 || true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x34

    const/16 v17, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v18, v9

    move/from16 v9, v16

    move-object/from16 v10, v17

    .line 1871
    invoke-static/range {v1 .. v10}, Lcom/hermes/android/BootstrapManager;->runWithRetry$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1883
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_13

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1890
    const-string v2, "Extracting hermes-agent..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1891
    new-instance v1, Ljava/io/File;

    iget-object v2, v11, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    const-string v3, "hermes-agent-extract"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1894
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1895
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1896
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1899
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1900
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rm -rf "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " && mkdir -p "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " && cd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && python3 -c \"import zipfile; zipfile.ZipFile(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\').extractall(\'.\')\" && mv hermes-agent-* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && echo \'Extract OK\' 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 1892
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1903
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1915
    :cond_9
    :goto_3
    new-instance v1, Lcom/hermes/android/WheelInstaller;

    iget-object v2, v11, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    iget-object v3, v11, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    new-instance v4, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda21;

    invoke-direct {v4, v11}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda21;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/hermes/android/WheelInstaller;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 1916
    invoke-virtual {v1}, Lcom/hermes/android/WheelInstaller;->listBundled()Ljava/util/List;

    move-result-object v2

    .line 1917
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bundled wheels for current arch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x4

    .line 1927
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pydantic-core"

    aput-object v3, v2, v13

    const-string v3, "jiter"

    aput-object v3, v2, v12

    const-string v3, "cryptography"

    aput-object v3, v2, v15

    const/4 v3, 0x3

    const-string v4, "pydantic"

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move/from16 v3, p1

    .line 1928
    invoke-virtual {v1, v2, v3}, Lcom/hermes/android/WheelInstaller;->installFromLocal(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1940
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheck()V

    .line 1957
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "cd "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && sed -i \'s/PyJWT\\[crypto\\]/PyJWT/g\' pyproject.toml && sed -i \'s/uvicorn\\[standard\\]/uvicorn/g\' pyproject.toml && sed -i \'/^[[:space:]]*\"Pillow==/d\' pyproject.toml 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 1956
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    const/4 v6, 0x2

    .line 1964
    const-string v2, "python3 -m pip install --quiet setuptools wheel 2>&1"

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    const/4 v6, 0x6

    .line 1974
    const-string v2, "python3 -c \'import rpds\' 2>/dev/null"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1975
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v9, " 2>&1"

    const-string v10, "python3 "

    if-eqz v1, :cond_b

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1976
    const-string v2, "[pip] Attempting rpds-py binary install..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    const/4 v6, 0x2

    .line 1977
    const-string v2, "python3 -m pip install --prefer-binary --only-binary rpds-py \'rpds-py\' 2>&1"

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1981
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1986
    const-string v2, "[pip] rpds-py binary not available, creating stub + metadata..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2012
    new-instance v12, Ljava/io/File;

    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".rpds_stub.py"

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2013
    const-string v1, "import site, os\nsp = site.getsitepackages()[0]\nd = os.path.join(sp, \'rpds\')\nos.makedirs(d, exist_ok=True)\nopen(os.path.join(d, \'__init__.py\'), \'w\').write(\n    \'# stub for rpds-py (no Rust on Android)\\n\'\n    \'class HashTrieMap(dict): pass\\n\'\n    \'class HashTrieSet(set): pass\\n\'\n    \'class List(list): pass\\n\'\n)\nv = \'0.30.0\'\ndi = os.path.join(sp, \'rpds_py-\' + v + \'.dist-info\')\nos.makedirs(di, exist_ok=True)\nopen(os.path.join(di, \'METADATA\'), \'w\').write(\n    \'Metadata-Version: 2.1\\nName: rpds-py\\nVersion: \' + v + \'\\n\'\n)\nopen(os.path.join(di, \'WHEEL\'), \'w\').write(\n    \'Wheel-Version: 1.0\\nGenerator: hermes-android-stub\\n\'\n    \'Root-Is-Purelib: true\\nTag: py3-none-any\\n\'\n)\nopen(os.path.join(di, \'RECORD\'), \'w\').write(\'\')\nopen(os.path.join(di, \'INSTALLER\'), \'w\').write(\'hermes-android-stub\\n\')\nopen(os.path.join(di, \'top_level.txt\'), \'w\').write(\'rpds\\n\')"

    const/4 v13, 0x0

    invoke-static {v12, v1, v13, v15, v13}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 2014
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2015
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    const/4 v6, 0x6

    .line 2016
    const-string v2, "[pip] rpds stub + fake dist-info created."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 2018
    const-string v2, "[pip] rpds-py binary installed."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    :goto_4
    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 2028
    const-string v2, "python3 -c \'import cryptography\' 2>/dev/null"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 2029
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 2030
    const-string v2, "[pip] Creating cryptography stub + dist-info..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2054
    new-instance v12, Ljava/io/File;

    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".crypto_stub.py"

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2055
    const-string v1, "import site, os\nsp = site.getsitepackages()[0]\nd = os.path.join(sp, \'cryptography\')\nos.makedirs(d, exist_ok=True)\nopen(os.path.join(d, \'__init__.py\'), \'w\').write(\n    \'# stub for cryptography (no Rust/C toolchain on Android)\\n\'\n    \'__version__ = \"48.0.0\"\\n\'\n)\nv = \'48.0.0\'\ndi = os.path.join(sp, \'cryptography-\' + v + \'.dist-info\')\nos.makedirs(di, exist_ok=True)\nopen(os.path.join(di, \'METADATA\'), \'w\').write(\n    \'Metadata-Version: 2.1\\nName: cryptography\\nVersion: \' + v + \'\\n\'\n)\nopen(os.path.join(di, \'WHEEL\'), \'w\').write(\n    \'Wheel-Version: 1.0\\nGenerator: hermes-android-stub\\n\'\n    \'Root-Is-Purelib: true\\nTag: py3-none-any\\n\'\n)\nopen(os.path.join(di, \'RECORD\'), \'w\').write(\'\')\nopen(os.path.join(di, \'INSTALLER\'), \'w\').write(\'hermes-android-stub\\n\')\nopen(os.path.join(di, \'top_level.txt\'), \'w\').write(\'cryptography\\n\')"

    invoke-static {v12, v1, v13, v15, v13}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 2056
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2057
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    const/4 v6, 0x6

    .line 2058
    const-string v2, "[pip] cryptography stub + dist-info created."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    :cond_c
    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 2068
    const-string v2, "python3 -c \'import PIL\' 2>/dev/null"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 2069
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 2070
    const-string v2, "[pip] Creating Pillow (PIL) stub + dist-info..."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2094
    new-instance v12, Ljava/io/File;

    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".pil_stub.py"

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2095
    const-string v1, "import site, os\nsp = site.getsitepackages()[0]\nd = os.path.join(sp, \'PIL\')\nos.makedirs(d, exist_ok=True)\nopen(os.path.join(d, \'__init__.py\'), \'w\').write(\n    \'# stub for Pillow (no C toolchain on Android)\\n\'\n    \'__version__ = \"12.2.0\"\\n\'\n)\nv = \'12.2.0\'\ndi = os.path.join(sp, \'Pillow-\' + v + \'.dist-info\')\nos.makedirs(di, exist_ok=True)\nopen(os.path.join(di, \'METADATA\'), \'w\').write(\n    \'Metadata-Version: 2.1\\nName: Pillow\\nVersion: \' + v + \'\\n\'\n)\nopen(os.path.join(di, \'WHEEL\'), \'w\').write(\n    \'Wheel-Version: 1.0\\nGenerator: hermes-android-stub\\n\'\n    \'Root-Is-Purelib: true\\nTag: py3-none-any\\n\'\n)\nopen(os.path.join(di, \'RECORD\'), \'w\').write(\'\')\nopen(os.path.join(di, \'INSTALLER\'), \'w\').write(\'hermes-android-stub\\n\')\nopen(os.path.join(di, \'top_level.txt\'), \'w\').write(\'PIL\\n\')"

    invoke-static {v12, v1, v13, v15, v13}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 2096
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2097
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    const/4 v6, 0x6

    .line 2098
    const-string v2, "[pip] Pillow (PIL) stub + dist-info created."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2103
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installCoreDeps()Lkotlin/Pair;

    move-result-object v1

    .line 2104
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez v2, :cond_f

    .line 2114
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " && python3 -m pip install --no-deps --no-build-isolation -e . 2>&1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    .line 2113
    invoke-static/range {v1 .. v6}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2117
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 2118
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    .line 2119
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hermes-agent editable install failed (exit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "). See logcat for details."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2118
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2105
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2106
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install hermes-agent core deps (exit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") after 3 attempts. Check network and try repair from Settings."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2105
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1930
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install bundled native wheels ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). See logcat for pip errors."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1930
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1919
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1920
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v2, "SUPPORTED_ABIS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, [Ljava/lang/Object;

    const/16 v19, 0x3f

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No bundled wheels found for ABI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". This APK is missing required assets/wheels/<arch>/*.whl \u2014 rebuild with wheels."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1904
    :cond_12
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to extract hermes-agent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to extract hermes-agent zip."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_13
    const-string v0, "Failed to download hermes-agent zip"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1886
    const-string v1, "Failed to download hermes-agent (network error). Please check your connection and try repair from Settings."

    .line 1885
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1862
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "install fallback: resolve latest release failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1864
    const-string v1, "Failed to resolve latest hermes-agent release (network error). Please check your connection and try repair from Settings."

    .line 1863
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final installHermesAgentLocked$lambda$87(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Pair;
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 1915
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final installPatches()V
    .locals 13

    .line 1433
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/patches"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v1, 0x2

    .line 1441
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "monkey_patch.py"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "sitecustomize.py"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1442
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1443
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1445
    :try_start_0
    iget-object v9, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "patches/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v10, v9

    check-cast v10, Ljava/io/InputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    .line 1446
    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v12, v11

    check-cast v12, Ljava/io/FileOutputStream;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Ljava/io/OutputStream;

    invoke-static {v10, v12, v4, v1, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v11, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1445
    :try_start_4
    invoke-static {v9, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1448
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-lez v6, :cond_1

    .line 1449
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1448
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_0
    move-exception v0

    .line 1446
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 1445
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 1451
    :try_start_9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "installPatches: critical patch \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' failed \u2014 aborting (marker won\'t commit)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v4, "BootstrapManager"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1453
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "installPatches failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1461
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v3, ".hermes-android/bin"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1463
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v7, "bin/bash"

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1465
    new-instance v3, Ljava/io/File;

    const-string v7, "hermes"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1467
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n                |#!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n                |set -euo pipefail\n                |export TMPDIR=\"${TMPDIR:-$PREFIX/tmp}\"\n                |export HERMES_HOME=\"${HERMES_HOME:-$HOME/.hermes}\"\n                |export SHELL=\"${SHELL:-$PREFIX/bin/bash}\"\n                |PATCH_DIR=\"$HOME/.hermes-android/patches\"\n                |HERMES_SRC=\"$HOME/.hermes-android/hermes-agent\"\n                |export PYTHONPATH=\"${PATCH_DIR}:${HERMES_SRC}:${PYTHONPATH:-}\"\n                |exec python3 -c \"\n                |import monkey_patch\n                |from hermes_cli.main import main\n                |main()\n                |\" \"$@\"\n            "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1480
    invoke-static {v7, v6, v5, v6}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1466
    invoke-static {v3, v7, v6, v1, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 1481
    invoke-virtual {v3, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1484
    new-instance v3, Ljava/io/File;

    const-string v7, "hermes-agent"

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n                |set -euo pipefail\n                |export TMPDIR=\"${TMPDIR:-$PREFIX/tmp}\"\n                |export HERMES_HOME=\"${HERMES_HOME:-$HOME/.hermes}\"\n                |PATCH_DIR=\"$HOME/.hermes-android/patches\"\n                |HERMES_SRC=\"$HOME/.hermes-android/hermes-agent\"\n                |export PYTHONPATH=\"${PATCH_DIR}:${HERMES_SRC}:${PYTHONPATH:-}\"\n                |exec python3 -c \"\n                |import monkey_patch\n                |from run_agent import main\n                |main()\n                |\" \"$@\"\n            "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1498
    invoke-static {v0, v6, v5, v6}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-static {v3, v0, v6, v1, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 1499
    invoke-virtual {v3, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private final installPipFromBundle()V
    .locals 4

    .line 1385
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda28;-><init>()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda29;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method private static final installPipFromBundle$lambda$43()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final installPipFromBundle$lambda$44(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    .line 1385
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->installPipFromBundleLocked()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final installPipFromBundleLocked()V
    .locals 11

    .line 1389
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "lib/python3.13/ensurepip/_bundled"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 3652
    array-length v1, v0

    move v2, v9

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1391
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "pip-"

    invoke-static {v4, v6, v9, v8, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ".whl"

    invoke-static {v4, v5, v9, v8, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v10

    :goto_1
    if-nez v0, :cond_2

    .line 1394
    const-string v0, "BootstrapManager"

    const-string v1, "installPipFromBundle: no pip wheel in _bundled/"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1395
    const-string v2, "[pip] WARNING: no bundled pip wheel found"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    return-void

    .line 1399
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[pip] Installing pip from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1400
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "lib/python3.13/site-packages"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1408
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/util/zip/ZipFile;

    .line 1409
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    const-string v4, "entries(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 3654
    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 1410
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1411
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1413
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v6, v4

    check-cast v6, Ljava/io/InputStream;

    .line 1414
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v7, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v5, v7

    check-cast v5, Ljava/io/FileOutputStream;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/io/OutputStream;

    invoke-static {v6, v5, v9, v8, v10}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v7, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1415
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1413
    :try_start_4
    invoke-static {v4, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1414
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 1413
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 1418
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1408
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1421
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "bin/bash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1422
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 1423
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pip"

    aput-object v3, v2, v9

    const-string v3, "pip3"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "pip3.13"

    aput-object v3, v2, v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1424
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1425
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "#!"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\nexec python3 -m pip \"$@\"\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v10, v8, v10}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 1426
    invoke-virtual {v5, v4, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_3

    :cond_6
    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1429
    const-string v2, "[pip] pip installed to site-packages, bin/pip3 created"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    return-void

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 1408
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final installPythonBundle(Ljava/lang/String;)V
    .locals 4

    .line 1310
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda33;-><init>()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0, p1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda34;-><init>(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method private static final installPythonBundle$lambda$38()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final installPythonBundle$lambda$39(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1310
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->installPythonBundleLocked(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final installPythonBundleLocked(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 1315
    iget-object v1, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[bundle] Extracting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1316
    iget-object v1, v8, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    .line 1317
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/util/zip/ZipInputStream;

    .line 1318
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 1320
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1321
    const-string v6, "SYMLINKS.txt"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v6, :cond_2

    new-instance v3, Ljava/lang/String;

    .line 1323
    move-object v4, v0

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v4}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v4

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1324
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1325
    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    new-array v13, v7, [Ljava/lang/String;

    const-string/jumbo v4, "\u2190"

    aput-object v4, v13, v11

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1326
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 1327
    move-object v5, v9

    check-cast v5, Ljava/util/Collection;

    new-instance v6, Lkotlin/Pair;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v12, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1330
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1331
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    goto/16 :goto_0

    .line 1334
    :cond_2
    new-instance v6, Ljava/io/File;

    iget-object v12, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-direct {v6, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1336
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 1338
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1339
    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v12, v3

    check-cast v12, Ljava/io/FileOutputStream;

    move-object v13, v0

    check-cast v13, Ljava/io/InputStream;

    check-cast v12, Ljava/io/OutputStream;

    invoke-static {v13, v12, v11, v10, v4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1341
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "bin/"

    invoke-static {v5, v3, v11, v10, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    check-cast v5, Ljava/lang/CharSequence;

    const-string v3, "/bin/"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v5, v3, v11, v10, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1342
    :cond_5
    invoke-virtual {v6, v7, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1345
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1346
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 1339
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_5
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 1348
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1317
    :try_start_6
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1349
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1316
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1352
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[bundle] Creating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " symlinks..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1353
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v9, "BootstrapManager"

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1354
    new-instance v0, Ljava/io/File;

    iget-object v4, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1357
    :cond_8
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1358
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1360
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "symlink failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2192 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_3

    .line 1366
    :cond_b
    iget-object v0, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1367
    new-instance v1, Ljava/io/File;

    iget-object v2, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "/data/data/com.termux/files/usr"

    invoke-direct {v8, v1, v2, v0}, Lcom/hermes/android/BootstrapManager;->fixScriptShebangs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 1369
    const-string v2, "[bundle] Python bundle installed."

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installPipFromBundle()V

    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "installPythonBundle done \u2014 prefix="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 1317
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 1316
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final isBinaryFile(Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    .line 813
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 814
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p1, v1

    check-cast p1, Ljava/io/FileInputStream;

    const/4 v2, 0x4

    .line 815
    new-array v3, v2, [B

    .line 816
    invoke-virtual {p1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    if-ge p1, v2, :cond_0

    .line 817
    :try_start_2
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 819
    :cond_0
    :try_start_3
    aget-byte p1, v3, v0

    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-ne p1, v5, :cond_1

    aget-byte v5, v3, v6

    const/16 v7, 0x45

    if-ne v5, v7, :cond_1

    const/4 v5, 0x2

    .line 820
    aget-byte v5, v3, v5

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_1

    const/4 v5, 0x3

    aget-byte v5, v3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v7, 0x46

    if-ne v5, v7, :cond_1

    :try_start_4
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v6

    :cond_1
    const/16 v5, 0x23

    if-ne p1, v5, :cond_2

    .line 822
    :try_start_5
    aget-byte p1, v3, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v5, 0x21

    if-ne p1, v5, :cond_2

    :try_start_6
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return v0

    :cond_2
    move p1, v0

    :goto_0
    if-ge p1, v2, :cond_4

    .line 3639
    :try_start_7
    aget-byte v5, v3, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    move v6, v0

    .line 814
    :goto_1
    :try_start_8
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v0, v6

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :goto_2
    return v0
.end method

.method private static final isVersionNewer$parts(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2328
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p0, 0x1

    new-array v1, p0, [C

    const/4 p0, 0x0

    const/16 v2, 0x2e

    aput-char v2, v1, p0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3720
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 3721
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3722
    check-cast v2, Ljava/lang/String;

    .line 2328
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, p0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3722
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3723
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final killProcessTreeOnTimeout(Ljava/lang/Process;)Z
    .locals 14

    .line 3441
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->pidOf(Ljava/lang/Process;)J

    move-result-wide v0

    .line 3442
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    .line 3443
    const-string v4, "BootstrapManager"

    const/4 v5, 0x0

    if-lez v3, :cond_5

    .line 3444
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x13

    .line 3449
    :try_start_0
    invoke-direct {p0, v0, v1, v6}, Lcom/hermes/android/BootstrapManager;->sig(JI)V

    move v7, v5

    :goto_0
    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0x8

    if-ge v7, v9, :cond_3

    .line 3452
    invoke-direct {p0, v0, v1}, Lcom/hermes/android/BootstrapManager;->collectDescendants(J)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 3697
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .line 3698
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 3452
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3698
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3699
    :cond_1
    check-cast v9, Ljava/util/List;

    .line 3453
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3454
    check-cast v9, Ljava/lang/Iterable;

    .line 3700
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 3454
    invoke-direct {p0, v9, v10, v6}, Lcom/hermes/android/BootstrapManager;->sig(JI)V

    goto :goto_2

    :cond_2
    move v7, v8

    goto :goto_0

    .line 3456
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/hermes/android/BootstrapManager;->collectDescendants(J)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 3702
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0x9

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 3456
    invoke-direct {p0, v9, v10, v8}, Lcom/hermes/android/BootstrapManager;->sig(JI)V

    goto :goto_3

    .line 3457
    :cond_4
    invoke-direct {p0, v0, v1, v8}, Lcom/hermes/android/BootstrapManager;->sig(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    .line 3459
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tree kill signal phase failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :cond_5
    :goto_4
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->reapDirectChild(Ljava/lang/Process;)Z

    move-result p1

    if-gtz v3, :cond_6

    return p1

    .line 3468
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3a98

    add-long/2addr v6, v8

    .line 3470
    :catch_0
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v3, v8, v6

    const-string v8, "/proc/"

    const/4 v9, 0x1

    if-gez v3, :cond_a

    .line 3471
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .line 3704
    instance-of v10, v3, Ljava/util/Collection;

    if-eqz v10, :cond_7

    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    .line 3705
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 3471
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    const-wide/16 v8, 0x64

    .line 3472
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_9
    :goto_6
    move v3, v9

    goto :goto_7

    :cond_a
    move v3, v5

    :goto_7
    if-nez v3, :cond_d

    .line 3476
    check-cast v2, Ljava/lang/Iterable;

    .line 3707
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 3708
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 3476
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3708
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3709
    :cond_c
    check-cast v6, Ljava/util/List;

    .line 3707
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "FAILED to confirm pip tree death within 15000ms (root="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", still alive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); orphan may keep writing $PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3475
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v3, :cond_e

    if-eqz p1, :cond_e

    move v5, v9

    :cond_e
    return v5
.end method

.method private final loadPoisonStateOnce()V
    .locals 7

    .line 343
    sget-object v0, Lcom/hermes/android/BootstrapManager;->poisonStateLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 345
    sget-object v1, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, p0

    check-cast v4, Lcom/hermes/android/BootstrapManager;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3, v2, v3}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v3

    :cond_1
    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/hermes/android/BootstrapManager$Companion;->parseLease(Ljava/lang/String;)Lcom/hermes/android/BootstrapManager$LeaseBootIds;

    move-result-object v1

    .line 347
    sget-object v4, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v5, Lcom/hermes/android/BootstrapManager$LeaseBootIds;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->currentBootId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/hermes/android/BootstrapManager$LeaseBootIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1, v5}, Lcom/hermes/android/BootstrapManager$Companion;->leaseVerdict(ZLcom/hermes/android/BootstrapManager$LeaseBootIds;Lcom/hermes/android/BootstrapManager$LeaseBootIds;)Lcom/hermes/android/BootstrapManager$LeaseVerdict;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/BootstrapManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/hermes/android/BootstrapManager$LeaseVerdict;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_6

    const/4 v1, 0x2

    const-string v2, "BootstrapManager"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 353
    invoke-virtual {v4}, Lcom/hermes/android/BootstrapManager$Companion;->markPackageSubsystemPoisoned()V

    .line 354
    const-string v0, "Package subsystem POISONED on startup: residual/unreadable writer lease this boot (a package write did not complete / an orphan may be active). Device restart required."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 347
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 349
    :cond_4
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/hermes/android/BootstrapManager;

    .line 350
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getWriterLeaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "stale writer lease delete() returned false"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 349
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_6
    :goto_3
    return-void
.end method

.method private final openSslRefreshPending()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1664
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/BootstrapManager;

    .line 1665
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getOpenSslMarker()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1664
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1666
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v2

    :goto_3
    check-cast v1, Ljava/lang/String;

    .line 1667
    const-string v2, "3.6.3"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static final patchPydanticVersionCheck$lambda$117()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final patchPydanticVersionCheck$lambda$118(Lcom/hermes/android/BootstrapManager;)Lkotlin/Unit;
    .locals 0

    .line 3013
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheckLocked()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final patchPydanticVersionCheckLocked()V
    .locals 11

    .line 3017
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "tmp/pydantic_ver_patch.py"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3099
    :cond_0
    const-string v1, "import os, re, site, glob, sys\n\n# 1. \u627e\u51fa\u5be6\u969b\u5b89\u88dd\u7684 pydantic-core \u7248\u672c\ncore_ver = None\ntry:\n    import pydantic_core\n    core_ver = pydantic_core.__version__\nexcept ImportError:\n    pass\n\nif not core_ver:\n    # fallback\uff1a\u6383\u63cf dist-info \u76ee\u9304\u540d\u7a31\n    for sp in site.getsitepackages():\n        if not os.path.isdir(sp):\n            continue\n        for entry in os.listdir(sp):\n            if entry.startswith(\'pydantic_core-\') and entry.endswith(\'.dist-info\'):\n                core_ver = entry[len(\'pydantic_core-\'):-len(\'.dist-info\')]\n                break\n        if core_ver:\n            break\n\nif not core_ver:\n    print(\'[pydantic-patch] ERROR: pydantic-core not found in site-packages\', file=sys.stderr)\n    sys.exit(1)\n\nprint(f\'[pydantic-patch] Detected pydantic-core=={core_ver}\')\npatched = 0\n\nfor sp in site.getsitepackages():\n    if not os.path.isdir(sp):\n        continue\n\n    # 2a. \u4fee\u88dc pydantic/version.py:\n    #   - PYDANTIC_CORE_VERSION = \'<old>\' \u2192 \'<actual>\'\n    #   - _ensure_pydantic_core_version() \u2192 no-op\uff08\u5fb9\u5e95\u7981\u7528\u7248\u672c\u6aa2\u67e5\uff09\n    vf = os.path.join(sp, \'pydantic\', \'version.py\')\n    if os.path.exists(vf):\n        c = open(vf).read()\n        # \u66ff\u63db\u5e38\u6578\u503c\n        c2 = re.sub(\n            r\"(PYDANTIC_CORE_VERSION\\s*=\\s*)[\'\\\"][^\'\\\"]+[\'\\\"]\",\n            r\"\\g<1>\'\" + core_ver + \"\'\",\n            c,\n        )\n        # \u5c07 _ensure_pydantic_core_version \u51fd\u5f0f\u66ff\u63db\u70ba no-op\n        # \u5339\u914d\u6574\u500b\u51fd\u5f0f\uff08\u5f9e def \u5230\u4e0b\u4e00\u500b\u9802\u5c64 def \u6216\u6587\u4ef6\u7d50\u5c3e\uff09\n        c2 = re.sub(\n            r\'def _ensure_pydantic_core_version\\(\\).*?(?=\\ndef |\\Z)\',\n            \'def _ensure_pydantic_core_version() -> None:\\n    pass  # patched: skip version check on Android\\n\\n\',\n            c2,\n            flags=re.DOTALL,\n        )\n        if c2 != c:\n            open(vf, \'w\').write(c2)\n            print(f\'[pydantic-patch] Patched version.py \u2192 PYDANTIC_CORE_VERSION={core_ver} + disabled check\')\n            patched += 1\n        else:\n            print(f\'[pydantic-patch] version.py already up-to-date\')\n\n    # 2b. \u4fee\u88dc pydantic dist-info METADATA: Requires-Dist: pydantic-core==<old> \u2192 ==<actual>\n    for md in glob.glob(os.path.join(sp, \'pydantic-*.dist-info\')):\n        mf = os.path.join(md, \'METADATA\')\n        if os.path.exists(mf):\n            c = open(mf).read()\n            c2 = re.sub(\n                r\'(Requires-Dist:\\s*pydantic-core\\s*==\\s*)[^\\s\\n]+\',\n                r\'\\g<1>\' + core_ver,\n                c,\n            )\n            if c2 != c:\n                open(mf, \'w\').write(c2)\n                print(f\'[pydantic-patch] Patched METADATA \u2192 pydantic-core=={core_ver}\')\n                patched += 1\n            else:\n                print(f\'[pydantic-patch] METADATA already up-to-date\')\n\nprint(f\'[pydantic-patch] Done: {patched} file(s) patched\')"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3019
    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 3102
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "python3 \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[pydantic-patch] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 3104
    const-string v3, "BootstrapManager"

    if-eqz v2, :cond_1

    const/16 v4, 0xc8

    .line 3105
    invoke-static {v1, v4}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "patchPydanticVersionCheck failed (rc="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3107
    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "patchPydanticVersionCheck OK: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :goto_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static synthetic performUpdate$default(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2537
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermes/android/BootstrapManager;->performUpdate(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private final performUpdateImpl(Lkotlin/jvm/functions/Function1;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string v8, "rm -f "

    const-string v9, "python3 -c \"\nimport urllib.request, sys, os\nurl=\'"

    const-string v1, "curl -sIL \'"

    .line 2546
    new-instance v12, Ljava/io/File;

    iget-object v2, v11, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v3, ".hermes-android/hermes-agent"

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2547
    new-instance v13, Ljava/io/File;

    iget-object v2, v11, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    const-string v3, "hermes-agent-update.zip"

    invoke-direct {v13, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 2551
    const-string v2, "Resolving latest release..."

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->resolveLatestReleaseTag()Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermes/android/BootstrapManager$UpdateError;

    .line 2553
    const-string v14, "BootstrapManager"

    const/4 v15, 0x0

    if-nez v3, :cond_2

    .line 2554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "performUpdate: resolve latest release failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 2555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Update failed \u2014 cannot resolve latest release ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v15

    .line 2558
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "https://github.com/NousResearch/hermes-agent/archive/refs/tags/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v16, 0x0

    .line 2567
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' --max-time 10 | grep -i \'content-length\' | tail -1 | awk \'{print $2}\' | tr -d \'\\r\\n\' 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v3, 0x3a98

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 2566
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2571
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    move-wide/from16 v4, v16

    .line 2575
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2576
    new-instance v3, Ljava/lang/Thread;

    .line 2594
    new-instance v2, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;

    move-object v1, v2

    move-object v15, v2

    move-object v2, v7

    move-object/from16 v17, v7

    move-object v7, v3

    move-object v3, v13

    move-object/from16 v18, v12

    move v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda27;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLkotlin/jvm/functions/Function1;)V

    .line 2576
    invoke-direct {v7, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2594
    invoke-virtual {v7, v12}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    if-eqz v0, :cond_4

    .line 2600
    const-string v1, "Downloading latest hermes-agent..."

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    :cond_4
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\nout=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\nprint(\'Downloading\', url)\nreq = urllib.request.urlopen(url, timeout=120)\nwith open(out, \'wb\') as f:\n    while True:\n        chunk = req.read(64 * 1024)\n        if not chunk: break\n        f.write(chunk)\nprint(\'Downloaded\', os.path.getsize(out), \'bytes\')\n\" 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2617
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " 2>&1 || true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v9, 0x24

    const/4 v10, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-wide/32 v19, 0x927c0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v15, v17

    move-object/from16 v17, v7

    move-wide/from16 v6, v19

    .line 2602
    :try_start_2
    invoke-static/range {v1 .. v10}, Lcom/hermes/android/BootstrapManager;->runWithRetry$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 2621
    invoke-virtual {v15, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2622
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    .line 2624
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v8, 0x1f4

    if-eqz v2, :cond_6

    .line 2625
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v8}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update download failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    .line 2626
    const-string v1, "Download failed \u2014 check network"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v1, 0x0

    return v1

    :cond_6
    if-eqz v0, :cond_7

    .line 2631
    const-string v1, "Extracting update..."

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    :cond_7
    new-instance v9, Ljava/io/File;

    iget-object v1, v11, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    const-string v2, "hermes-agent-update-extract"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2634
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2635
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2636
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2637
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "rm -rf "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " && mkdir -p "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && cd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && python3 -c \"import zipfile; zipfile.ZipFile(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\').extractall(\'.\')\" && echo \'Extract OK\' 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 2633
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 2640
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 2641
    const-string v1, "Extract failed"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v1, 0x0

    return v1

    .line 2646
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 3665
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_b

    aget-object v5, v1, v4

    .line 2646
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v2, v5

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    :goto_1
    if-nez v2, :cond_d

    if-eqz v0, :cond_c

    .line 2648
    const-string v1, "Extract error: no directory found"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 v1, 0x0

    return v1

    :cond_d
    if-eqz v0, :cond_e

    .line 2653
    const-string v1, "Updating files..."

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    :cond_e
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2657
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2658
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "cd "

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " && find . -not -path \'./web/*\' -not -path \'./web\' | while read f; do   if [ -d \"$f\" ]; then mkdir -p \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\'\"$f\";   elif [ -f \"$f\" ]; then cp -f \"$f\" \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\'\"$f\"; fi; done && echo \'Copy OK\' 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 2654
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 2661
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v0, :cond_f

    .line 2662
    const-string v1, "File copy failed"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/4 v1, 0x0

    return v1

    .line 2667
    :cond_10
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2678
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && sed -i \'s/PyJWT\\[crypto\\]/PyJWT/g\' pyproject.toml && sed -i \'s/uvicorn\\[standard\\]/uvicorn/g\' pyproject.toml && sed -i \'/^[[:space:]]*\"Pillow==/d\' pyproject.toml 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    .line 2677
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    if-eqz v0, :cond_11

    .line 2685
    const-string v1, "Reinstalling dependencies..."

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installCoreDeps()Lkotlin/Pair;

    move-result-object v1

    .line 2692
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_13

    .line 2693
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v8}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update core-deps refresh failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_12

    .line 2694
    const-string v1, "Dependency install failed \u2014 check network and retry"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/4 v1, 0x0

    return v1

    .line 2698
    :cond_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && python3 -m pip install --no-deps --no-build-isolation -e . 2>&1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    .line 2697
    invoke-static/range {v1 .. v6}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 2701
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheck()V

    .line 2703
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->getInstalledVersion()Ljava/lang/String;

    move-result-object v2

    .line 2704
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "Updated to v"

    if-eqz v3, :cond_15

    .line 2708
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v8}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Update pip reinstall failed: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_14

    .line 2709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (restart app to finish)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return v12

    :cond_15
    if-eqz v0, :cond_16

    .line 2713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hermes-agent updated to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v15, v17

    move-object/from16 v17, v7

    :goto_2
    const/4 v1, 0x0

    .line 2621
    invoke-virtual {v15, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2622
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    throw v0
.end method

.method static synthetic performUpdateImpl$default(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2545
    :cond_0
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->performUpdateImpl(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private static final performUpdateImpl$lambda$102(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/File;JLkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 2577
    :catch_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2579
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    move-wide v3, v1

    :goto_1
    cmp-long v0, p2, v1

    .line 2580
    const-string v1, "Downloading: "

    const/16 v2, 0x400

    if-lez v0, :cond_1

    const/16 v0, 0x64

    int-to-long v5, v0

    mul-long/2addr v5, v3

    .line 2581
    :try_start_1
    div-long/2addr v5, p2

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    int-to-long v5, v2

    .line 2582
    div-long/2addr v3, v5

    div-long/2addr v3, v5

    .line 2583
    div-long v7, p2, v5

    div-long/2addr v7, v5

    .line 2584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    int-to-long v5, v2

    .line 2586
    div-long/2addr v3, v5

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p4, :cond_2

    .line 2589
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-wide/16 v0, 0x1f4

    .line 2590
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_3
    return-void
.end method

.method private final pidOf(Ljava/lang/Process;)J
    .locals 5

    .line 3500
    const-string v0, "pid"

    const/4 v1, 0x0

    .line 3501
    :try_start_0
    const-class v2, Ljava/lang/Process;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3502
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_1
    const-wide/16 v2, -0x1

    .line 3505
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3506
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v2, v0

    :catchall_1
    :cond_3
    return-wide v2
.end method

.method private final processSymlinks(Ljava/util/List;Ljava/io/File;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 676
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v5, "BootstrapManager"

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string/jumbo v7, "\u2190"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 679
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "substring(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    .line 680
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 683
    const-string v0, "./"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v10, v0, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v15, "getAbsolutePath(...)"

    const-string v14, "/data/data/com.termux/files/usr"

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v10, v14

    move-object v0, v15

    goto :goto_1

    .line 686
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v11, v14

    move-object/from16 v16, v14

    move v14, v0

    move-object v0, v15

    move-object v15, v8

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, v16

    .line 690
    :goto_1
    invoke-static {v9, v10, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 691
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 696
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 700
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 701
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    add-int/lit8 v4, v4, 0x1

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Symlink failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u2192 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 708
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Symlinks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final reapDirectChild(Ljava/lang/Process;)Z
    .locals 3

    .line 3483
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3486
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 3487
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final refreshOpenSslFromAssetsLocked()V
    .locals 14

    .line 1692
    const-string v0, "BootstrapManager"

    sget-object v1, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$Companion;->detectTermuxArch()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bootstrap-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1696
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 1698
    :try_start_0
    iget-object v3, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/io/InputStream;

    .line 1699
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    move-object v4, v5

    check-cast v4, Ljava/util/zip/ZipInputStream;

    .line 1700
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 1702
    sget-object v9, Lcom/hermes/android/BootstrapManager;->OPENSSL_LIB_ENTRIES:Ljava/util/List;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1703
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 1705
    :cond_0
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ".osslnew"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    .line 1706
    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    move-object v11, v9

    check-cast v11, Ljava/io/FileOutputStream;

    move-object v12, v4

    check-cast v12, Ljava/io/InputStream;

    check-cast v11, Ljava/io/OutputStream;

    const/4 v13, 0x0

    invoke-static {v12, v11, v13, v7, v8}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v9, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v7, 0x1

    .line 1707
    invoke-virtual {v10, v7, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1708
    invoke-virtual {v10, v7, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1709
    invoke-virtual {v10, v7, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1710
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1706
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 1712
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1713
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    goto :goto_0

    .line 1715
    :cond_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1699
    :try_start_7
    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1716
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 1698
    :try_start_8
    invoke-static {v3, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1717
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    sget-object v4, Lcom/hermes/android/BootstrapManager;->OPENSSL_LIB_ENTRIES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 1718
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openssl refresh aborted: only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 1735
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3656
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1735
    :try_start_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void

    .line 1721
    :cond_5
    :try_start_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1722
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 1723
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openssl refresh: rename failed for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (retry next launch)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1735
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3656
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1735
    :try_start_b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    return-void

    .line 1728
    :cond_9
    :try_start_c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/BootstrapManager;

    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getOpenSslMarker()Ljava/io/File;

    move-result-object v1

    const-string v3, "3.6.3"

    invoke-static {v1, v3, v8, v7, v8}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_d
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1729
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openssl marker write failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_a
    const-string v1, "OpenSSL libs refreshed to 3.6.3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 1735
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3656
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1735
    :try_start_e
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_6
    move-exception v1

    .line 1699
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v4

    :try_start_10
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v1

    .line 1698
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    move-exception v4

    :try_start_12
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v1

    .line 1732
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openssl refresh failed (retry next launch): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 1735
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3656
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1735
    :try_start_14
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    return-void

    :goto_7
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 3656
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1735
    :try_start_15
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_e
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    goto :goto_8

    :catchall_c
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3657
    :cond_f
    throw v0
.end method

.method private final refusingWhenPoisoned(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 412
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 414
    invoke-virtual {p3}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": package subsystem poisoned; refused until device restart ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BootstrapManager"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2
.end method

.method private static final repair$lambda$112(Lkotlin/jvm/functions/Function1;IILjava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2865
    new-instance p3, Lcom/hermes/android/BootstrapManager$Progress;

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network retry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/3..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 2865
    const-string v1, "Reinstalling Python"

    invoke-direct {p3, v0, p1, v1, p2}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final repair$lambda$113(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;)Lkotlin/Pair;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 2905
    invoke-static/range {v1 .. v6}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 3262
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final runInTermux$lambda$131(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/hermes/android/BootstrapManager;)V
    .locals 13

    .line 3336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x400

    .line 3337
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v5, v2

    .line 3341
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_5

    move v4, v2

    move v8, v5

    :goto_1
    if-ge v4, v3, :cond_4

    .line 3344
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    .line 3345
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    .line 3361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3355
    :cond_0
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 3356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v5, "toString(...)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v12}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 3357
    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v5, 0x1

    move v8, v5

    goto :goto_2

    .line 3348
    :cond_2
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 3349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v5, "toString(...)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v12}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 3350
    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_3
    move v8, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 3345
    monitor-exit p1

    throw p0

    :cond_4
    move v5, v8

    goto :goto_0

    .line 3365
    :cond_5
    move-object p0, v0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_6

    .line 3366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p0, "toString(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 3369
    const-string p1, "BootstrapManager"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "stream read error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private final runInTermuxPkg(Ljava/lang/String;J)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3123
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda12;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "package op skipped"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda13;-><init>(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method static synthetic runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    .line 3122
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg(Ljava/lang/String;J)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final runInTermuxPkg$lambda$120()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final runInTermuxPkg$lambda$121(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;J)Lkotlin/Pair;
    .locals 1

    const/4 v0, 0x1

    .line 3124
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final runInTermuxStreaming$lambda$126(Ljava/lang/Process;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 3230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200

    .line 3231
    new-array v1, v1, [B

    .line 3232
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 3235
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3236
    const-string v3, "toString(...)"

    if-ltz v2, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 3238
    :try_start_1
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    .line 3244
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3240
    :cond_1
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 3241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3242
    invoke-static {v0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3247
    :cond_3
    move-object p0, v0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3249
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "stream-reader: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BootstrapManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private final runWithRetry(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZ)Lkotlin/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, -0x1

    .line 3157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v11, p0

    if-gt v3, v0, :cond_4

    move-object/from16 v2, p1

    move-wide/from16 v12, p5

    move/from16 v14, p7

    .line 3159
    :goto_0
    invoke-virtual {v11, v2, v12, v13, v14}, Lcom/hermes/android/BootstrapManager;->runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object v15

    .line 3160
    invoke-virtual {v15}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    return-object v15

    .line 3162
    :cond_0
    invoke-virtual {v15}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x12c

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runWithRetry attempt "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed (rc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BootstrapManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v0, :cond_3

    if-eqz v1, :cond_1

    .line 3166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v8, p7

    .line 3172
    invoke-static/range {v4 .. v10}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    :cond_2
    int-to-long v4, v3

    const-wide/16 v6, 0x7d0

    mul-long/2addr v4, v6

    .line 3175
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eq v3, v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v2, v15

    :cond_4
    return-object v2
.end method

.method static synthetic runWithRetry$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_3

    :cond_3
    move-wide v3, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move v5, p7

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move-object p5, v1

    move-object p6, v2

    move-wide p7, v3

    move p9, v5

    .line 3149
    invoke-direct/range {p2 .. p9}, Lcom/hermes/android/BootstrapManager;->runWithRetry(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZ)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final runWithRetryPkg(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3134
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda7;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "package op skipped"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v9, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda8;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda8;-><init>(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v9}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method static synthetic runWithRetryPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x3

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 3128
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final runWithRetryPkg$lambda$122()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final runWithRetryPkg$lambda$123(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;
    .locals 10

    const/16 v8, 0x10

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3135
    invoke-static/range {v0 .. v9}, Lcom/hermes/android/BootstrapManager;->runWithRetry$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final runtimePatchesRefreshPending()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1626
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/BootstrapManager;

    .line 1627
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getRuntimePatchesMarker()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1626
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1628
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v2

    :goto_3
    check-cast v1, Ljava/lang/String;

    .line 1629
    const-string v2, "2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private final shouldBeExecutable(Ljava/lang/String;Ljava/io/File;)Z
    .locals 6

    .line 713
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "bin/"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_2

    const-string v1, "libexec/"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 714
    const-string v1, "lib/apt/"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "lib/bash/"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 715
    const-string v1, ".so"

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".so."

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 719
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 720
    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    const/4 v0, 0x4

    .line 721
    new-array v1, v0, [B

    .line 722
    invoke-virtual {p2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 723
    aget-byte p2, v1, v2

    const/16 v0, 0x7f

    if-ne p2, v0, :cond_1

    aget-byte p2, v1, v5

    const/16 v0, 0x45

    if-ne p2, v0, :cond_1

    .line 724
    aget-byte p2, v1, v3

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    aget-byte p2, v1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x46

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    .line 720
    :goto_0
    :try_start_2
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v5

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_1
    return v2

    :cond_2
    :goto_2
    return v5
.end method

.method private final sig(JI)V
    .locals 0

    long-to-int p1, p1

    .line 3493
    :try_start_0
    invoke-static {p1, p3}, Landroid/os/Process;->sendSignal(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final withDpkgLock(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1263
    const-string v0, "BootstrapManager"

    .line 0
    const-string v1, "dpkg-heal: "

    .line 1263
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1265
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1266
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v4

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 1267
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    if-nez v2, :cond_1

    move-object p2, p0

    check-cast p2, Lcom/hermes/android/BootstrapManager;

    .line 1268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " busy (dpkg/apt running); skip this round"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1269
    :try_start_2
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 1272
    :cond_1
    :try_start_3
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1274
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1266
    :try_start_5
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 1274
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    .line 1266
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-static {v4, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p2

    .line 1278
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dpkg-heal: lock acquisition failed ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3
.end method

.method private final writeDpkgStatusAtomic(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1285
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "status.hermes-heal.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1286
    invoke-static {v0, p2, v1, v2, v1}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 1287
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1290
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1291
    new-instance p1, Ljava/io/IOException;

    const-string p2, "atomic rename failed for dpkg status"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeFixBrokenMarker()Z
    .locals 4

    .line 1248
    :try_start_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getDpkgFixBrokenMarker()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getDpkgFixBrokenMarker()Ljava/io/File;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dpkg-heal: marker write failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final checkForUpdate()Lcom/hermes/android/BootstrapManager$UpdateInfo;
    .locals 9

    .line 2523
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->getInstalledVersion()Ljava/lang/String;

    move-result-object v1

    .line 2524
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->checkRemoteVersion()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/hermes/android/BootstrapManager$UpdateError;

    if-nez v2, :cond_0

    .line 2526
    new-instance v6, Lcom/hermes/android/BootstrapManager$UpdateInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "\u2014"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/BootstrapManager$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)V

    return-object v6

    .line 2528
    :cond_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 2529
    new-instance v8, Lcom/hermes/android/BootstrapManager$UpdateInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/BootstrapManager$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public final checkRemoteVersion()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/hermes/android/BootstrapManager$UpdateError;",
            ">;"
        }
    .end annotation

    .line 2493
    const-string v0, "import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = \'https://github.com/NousResearch/hermes-agent/releases/latest\'\n    req = urllib.request.Request(url, method=\'HEAD\')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if \'/releases/tag/\' not in final: sys.exit(13)\n    tag = urllib.parse.unquote(final.rsplit(\'/\', 1)[1])\n    raw = \'https://raw.githubusercontent.com/NousResearch/hermes-agent/%s/pyproject.toml\' % tag\n    data = urllib.request.urlopen(raw, timeout=10).read().decode()\n    lines = [l for l in data.splitlines() if l.strip().startswith(\'version\')]\n    print((lines[0].split(\'\\\"\')[1] if lines else \'unknown\') + \' @ \' + tag)\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n"

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 2507
    const-string v3, "python3 -c \"import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = \'https://github.com/NousResearch/hermes-agent/releases/latest\'\n    req = urllib.request.Request(url, method=\'HEAD\')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if \'/releases/tag/\' not in final: sys.exit(13)\n    tag = urllib.parse.unquote(final.rsplit(\'/\', 1)[1])\n    raw = \'https://raw.githubusercontent.com/NousResearch/hermes-agent/%s/pyproject.toml\' % tag\n    data = urllib.request.urlopen(raw, timeout=10).read().decode()\n    lines = [l for l in data.splitlines() if l.strip().startswith(\'version\')]\n    print((lines[0].split(\'\\\"\')[1] if lines else \'unknown\') + \' @ \' + tag)\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n\" 2>&1"

    const-wide/16 v4, 0x4e20

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2511
    const-string v2, "BootstrapManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x12c

    .line 2512
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkRemoteVersion failed rc="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    new-instance v0, Lkotlin/Pair;

    invoke-direct {p0, v1}, Lcom/hermes/android/BootstrapManager;->classifyUpdateRc(I)Lcom/hermes/android/BootstrapManager$UpdateError;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2516
    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 2517
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "checkRemoteVersion: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    new-instance v1, Lkotlin/Pair;

    if-eqz v0, :cond_2

    const-string v2, " "

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v0, Lcom/hermes/android/BootstrapManager$UpdateError;->NONE:Lcom/hermes/android/BootstrapManager$UpdateError;

    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final clearLog()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->_logStream:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 435
    iput-wide v0, p0, Lcom/hermes/android/BootstrapManager;->lastLogEmitMs:J

    return-void
.end method

.method public final coreDepsMigrationPending()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1615
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/BootstrapManager;

    .line 1616
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getCoreDepsMarker()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1615
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1617
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v2

    :goto_3
    check-cast v1, Ljava/lang/String;

    .line 1618
    const-string v2, "2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final dpkgRepairPending()Z
    .locals 1

    .line 1199
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->getDpkgFixBrokenMarker()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final ensureCoreDepsCurrent()V
    .locals 7

    .line 1763
    const-string v0, "BootstrapManager"

    .line 1764
    :try_start_0
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->coreDepsMigrationPending()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->hasNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1766
    const-string v1, "Core deps migration deferred: offline (retry next launch)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1774
    :cond_1
    sget-object v1, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$Companion;->beginCoreDepsMigration()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1775
    const-string v1, "Core deps migration in flight (another generation); waiting for it to finish before READY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1781
    :goto_0
    sget-object v3, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v3}, Lcom/hermes/android/BootstrapManager$Companion;->isCoreDepsMigrationInFlight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x124f80

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1783
    const-string v1, "in-flight core-deps migration exceeded wait cap; proceeding (session-open stays lock-gated)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0xc8

    .line 1786
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 1793
    :cond_4
    :try_start_1
    new-instance v2, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda11;-><init>(Lcom/hermes/android/BootstrapManager;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v4, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda22;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1801
    :try_start_2
    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$Companion;->endCoreDepsMigration()V

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v2}, Lcom/hermes/android/BootstrapManager$Companion;->endCoreDepsMigration()V

    throw v1
    :try_end_2
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 1804
    invoke-virtual {v1}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ensureCoreDepsCurrent: package subsystem poisoned; deferred until device restart ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final ensureDpkgRepaired()Lcom/hermes/android/DpkgHealPolicy$RepairResult;
    .locals 3

    .line 1219
    :try_start_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->ensureDpkgRepairedImpl()Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1221
    invoke-virtual {v0}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ensureDpkgRepaired: package subsystem poisoned; deferred until device restart ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->DEFERRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    :goto_0
    return-object v0
.end method

.method public final ensureOpenSslCurrent()V
    .locals 4

    .line 1681
    :try_start_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->openSslRefreshPending()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1682
    :cond_0
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/BootstrapManager;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1687
    invoke-virtual {v0}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ensureOpenSslCurrent: package subsystem poisoned; deferred until device restart ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final ensureRuntimePatchesCurrent()V
    .locals 4

    .line 1641
    :try_start_0
    invoke-direct {p0}, Lcom/hermes/android/BootstrapManager;->runtimePatchesRefreshPending()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1642
    :cond_0
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda23;-><init>(Lcom/hermes/android/BootstrapManager;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda24;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1654
    invoke-virtual {v0}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ensureRuntimePatchesCurrent: package subsystem poisoned; deferred until device restart ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final ensureSqlite()Z
    .locals 5

    .line 2966
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2967
    new-instance v1, Ljava/io/File;

    const-string v2, "libsqlite3.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2974
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v2, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda18;-><init>(Ljava/io/File;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda19;-><init>(Lcom/hermes/android/BootstrapManager;Ljava/io/File;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3690
    invoke-virtual {v0}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ensureSqlite: package subsystem poisoned; refused until device restart ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final fullReinstall(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2930
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/BootstrapManager$Companion;->requirePackageSubsystemHealthy()V

    .line 2931
    const-string v0, "Full reinstall: wiping prefix and hermes-android dirs"

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :try_start_0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 2934
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v3, ".hermes-android"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2936
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to wipe dirs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/BootstrapManager;->install(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getBundledVersion()Ljava/lang/String;
    .locals 13

    .line 2298
    const-string v0, "getName(...)"

    const-string v1, "unknown"

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->cachedBundledVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v2

    .line 2300
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "hermes-agent-source.zip"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/InputStream;

    .line 2301
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v5, Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, v4

    check-cast v3, Ljava/util/zip/ZipInputStream;

    .line 2302
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 2304
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "pyproject.toml"

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v10, v9, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2305
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    move v7, v10

    move v8, v7

    .line 3661
    :goto_1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v7, v11, :cond_2

    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    if-ne v8, v5, :cond_5

    .line 2306
    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    .line 2307
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 3663
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 2307
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "version"

    invoke-static {v5, v7, v10, v9, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v6

    :goto_2
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    const/16 v0, 0x22

    .line 2308
    invoke-static {v3, v0, v6, v9, v6}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3, v0, v6, v9, v6}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 2310
    :cond_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 2311
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    :goto_3
    move-object v0, v1

    .line 2301
    :cond_7
    :try_start_3
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2300
    :try_start_4
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 2301
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 2300
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 2317
    const-string v2, "getBundledVersion failed"

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "BootstrapManager"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2319
    :goto_4
    iput-object v1, p0, Lcom/hermes/android/BootstrapManager;->cachedBundledVersion:Ljava/lang/String;

    return-object v1
.end method

.method public final getHomeDir()Ljava/io/File;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    return-object v0
.end method

.method public final getInstalledVersion()Ljava/lang/String;
    .locals 8

    .line 2282
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/hermes-agent/pyproject.toml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "unknown"

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2285
    :try_start_0
    invoke-static {v0, v3, v1, v3}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3658
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 2285
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "version"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const/16 v0, 0x22

    .line 2287
    invoke-static {v1, v0, v3, v4, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, v0, v3, v4, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    :catch_0
    :cond_4
    :goto_1
    return-object v2
.end method

.method public final getLogStream()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->logStream:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPrefixDir()Ljava/io/File;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    return-object v0
.end method

.method public final getTmpDir()Ljava/io/File;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->tmpDir:Ljava/io/File;

    return-object v0
.end method

.method public final hasNetwork()Z
    .locals 9

    .line 3183
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->isInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 3184
    const-string v3, "curl -sS --max-time 5 -o /dev/null -w \'%{http_code}\' https://packages-cf.termux.dev/ 2>&1"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final healthCheck()Lcom/hermes/android/BootstrapManager$HealthReport;
    .locals 24

    move-object/from16 v0, p0

    .line 2759
    const-string v1, "#!"

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v4, "bin/bash"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    .line 2760
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v4, "bin/python3"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    .line 2761
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v4, "bin/git"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 2762
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v8, "libexec/git-core/git"

    invoke-direct {v2, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v3

    .line 2763
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v9, "bin/pip"

    invoke-direct {v2, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2764
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v9, "bin/pip3"

    invoke-direct {v2, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v9, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v3

    .line 2765
    :goto_3
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v10, "lib/libsqlite3.so"

    invoke-direct {v2, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->isHermesInstalled()Z

    move-result v11

    .line 2767
    new-instance v2, Ljava/io/File;

    iget-object v5, v0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v12, ".hermes-android/bin/hermes"

    invoke-direct {v2, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    const/4 v5, 0x2

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    .line 2771
    :try_start_0
    invoke-static {v2, v13, v3, v13}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    .line 2773
    :cond_4
    invoke-static {v2, v1, v4, v5, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2774
    new-instance v14, Ljava/io/File;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :catch_0
    :cond_5
    move v1, v4

    :goto_4
    if-eqz v6, :cond_6

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->hasNetwork()Z

    move-result v2

    move v14, v2

    goto :goto_5

    :cond_6
    move v14, v4

    .line 2782
    :goto_5
    new-instance v2, Ljava/io/File;

    iget-object v15, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v2, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 2783
    const-string v3, "getName(...)"

    if-eqz v2, :cond_d

    .line 3667
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/Collection;

    .line 3668
    array-length v4, v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_9

    aget-object v13, v2, v5

    .line 2783
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v2

    const-string v2, "python"

    move/from16 v22, v1

    move/from16 v20, v4

    move/from16 v21, v14

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v14, 0x0

    invoke-static {v0, v2, v1, v4, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3668
    invoke-interface {v15, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move/from16 v22, v1

    move-object/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v14

    :cond_8
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    move/from16 v4, v20

    move/from16 v14, v21

    move/from16 v1, v22

    const/4 v13, 0x0

    goto :goto_6

    :cond_9
    move/from16 v22, v1

    move/from16 v21, v14

    .line 3669
    check-cast v15, Ljava/util/List;

    .line 2782
    check-cast v15, Ljava/lang/Iterable;

    .line 3670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 3679
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3678
    check-cast v2, Ljava/io/File;

    .line 2784
    new-instance v4, Ljava/io/File;

    const-string v5, "site-packages"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_a

    .line 3678
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3682
    :cond_c
    check-cast v0, Ljava/util/List;

    .line 2785
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v14, v0

    goto :goto_a

    :cond_d
    move/from16 v22, v1

    move/from16 v21, v14

    const/4 v14, 0x0

    .line 2786
    :goto_a
    const-string v0, ".dist-info"

    if-eqz v14, :cond_11

    .line 2787
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 3683
    array-length v2, v1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_f

    aget-object v5, v1, v4

    .line 2788
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "openai-"

    move-object/from16 v19, v1

    move/from16 v20, v2

    move/from16 v23, v12

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x0

    invoke-static {v13, v15, v12, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v0, v12, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v12, v23

    goto :goto_b

    :cond_f
    move/from16 v23, v12

    const/4 v1, 0x0

    .line 3684
    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_d

    :cond_10
    move/from16 v23, v12

    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_12

    .line 2786
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v15, v1

    goto :goto_e

    :cond_11
    move/from16 v23, v12

    :cond_12
    const/4 v15, 0x0

    :goto_e
    if-eqz v14, :cond_16

    .line 2792
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3685
    array-length v2, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_14

    aget-object v5, v1, v4

    .line 2793
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "anthropic-"

    move-object/from16 v17, v1

    move/from16 v18, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x2

    invoke-static {v12, v13, v2, v14, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0, v2, v14, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v3, 0x1

    goto :goto_10

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    move v3, v2

    .line 3686
    :goto_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_11

    :cond_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v13, v1

    :goto_11
    if-eqz v13, :cond_17

    .line 2791
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v16, v0

    goto :goto_12

    :cond_16
    const/4 v2, 0x0

    :cond_17
    move/from16 v16, v2

    .line 2797
    :goto_12
    new-instance v0, Lcom/hermes/android/BootstrapManager$HealthReport;

    move-object v5, v0

    move/from16 v12, v23

    move/from16 v13, v22

    move/from16 v14, v21

    invoke-direct/range {v5 .. v16}, Lcom/hermes/android/BootstrapManager$HealthReport;-><init>(ZZZZZZZZZZZ)V

    return-object v0
.end method

.method public final install(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 478
    const-string v9, "BootstrapManager"

    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/BootstrapManager$Companion;->requirePackageSubsystemHealthy()V

    .line 482
    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v2, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v3, Lcom/hermes/android/R$string;->step_1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "getString(...)"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x6

    const/4 v14, 0x0

    move-object v10, v1

    move v12, v5

    invoke-direct/range {v10 .. v16}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->createDirectories()V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->checkDiskSpace()V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->isInstalled()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 488
    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v3, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v4, Lcom/hermes/android/R$string;->step_2:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v10, Lcom/hermes/android/R$string;->step_2_detail:I

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->downloadAndExtractBootstrap()V

    goto :goto_0

    .line 491
    :cond_0
    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v3, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v4, Lcom/hermes/android/R$string;->step_2:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v10, Lcom/hermes/android/R$string;->step_already_exists:I

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :goto_0
    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v2, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v3, Lcom/hermes/android/R$string;->step_3:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v18, 0x3

    const/16 v21, 0x0

    move-object/from16 v17, v1

    move/from16 v19, v5

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v23}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->fixPaths()V

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->configureApt()V

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->createDpkgWrapper()V

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->createSecondStageLock()V

    .line 502
    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v2, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v3, Lcom/hermes/android/R$string;->step_4:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x4

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v23}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installPatches()V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->isPythonInstalled()Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 507
    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v3, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v4, Lcom/hermes/android/R$string;->step_5:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v10, Lcom/hermes/android/R$string;->step_5_detail:I

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {v0}, Lcom/hermes/android/BootstrapManager$Companion;->detectTermuxArch()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "python-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 511
    :try_start_0
    iget-object v0, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installing Python from bundled asset ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move v13, v5

    move v5, v11

    move-object v11, v6

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 516
    invoke-direct {v7, v10}, Lcom/hermes/android/BootstrapManager;->installPythonBundle(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move v13, v5

    move-object v11, v6

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 519
    const-string v1, "No bundle found, falling back to apt install..."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState()V

    .line 524
    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda35;

    invoke-direct {v3, v8, v13, v7}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda35;-><init>(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;)V

    const/16 v5, 0x8

    const-string v1, "apt update -o Dpkg::Options::=--force-confold 2>&1"

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apt update result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 533
    const-string v1, "apt install -y ca-certificates 2>&1 || true"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    .line 534
    new-instance v0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, v8, v13, v7}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;-><init>(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;)V

    .line 541
    const-string v1, "dpkg --configure -a 2>&1 || true ; apt update 2>&1 || true"

    .line 534
    const-string v2, "apt install -y python git libsqlite 2>&1 || apt install -y python3 git libsqlite 2>&1"

    const/4 v3, 0x3

    invoke-direct {v7, v2, v3, v0, v1}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apt install result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState()V

    .line 546
    iget-object v0, v7, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 547
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "/data/data/com.termux/files/usr"

    invoke-direct {v7, v1, v2, v0}, Lcom/hermes/android/BootstrapManager;->fixScriptShebangs(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 550
    const-string v1, "ls -la $PREFIX/bin/python3 $PREFIX/bin/pip 2>&1"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Install check: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_2

    :cond_1
    move v13, v5

    move-object v11, v6

    .line 553
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v3, Lcom/hermes/android/R$string;->step_5:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v4, Lcom/hermes/android/R$string;->step_already_exists:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v13, v1, v3}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->ensureSqlite()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->isHermesInstalled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 566
    new-instance v0, Ljava/io/File;

    iget-object v3, v7, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v4, ".hermes-android/hermes-agent/hermes_cli/web_server.py"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v2

    .line 567
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->isHermesInstalled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_4

    .line 571
    :cond_3
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v2, Lcom/hermes/android/R$string;->step_6:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v3, Lcom/hermes/android/R$string;->step_already_exists:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-direct {v0, v3, v13, v1, v2}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 568
    :cond_4
    :goto_4
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v3, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v4, Lcom/hermes/android/R$string;->step_6:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v18, 0x6

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move/from16 v19, v13

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v23}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 569
    invoke-static {v7, v2, v1, v0}, Lcom/hermes/android/BootstrapManager;->installHermesAgent$default(Lcom/hermes/android/BootstrapManager;ZILjava/lang/Object;)V

    .line 574
    :goto_5
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v2, Lcom/hermes/android/R$string;->step_done:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v13

    move/from16 v19, v13

    move-object/from16 v20, v1

    invoke-direct/range {v17 .. v23}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 561
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v2, Lcom/hermes/android/R$string;->error_sqlite_install:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final installEdgeFeatures(Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 2166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->installEdgeFeaturesImpl(Lkotlin/jvm/functions/Function1;)Z

    move-result p1
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2168
    invoke-virtual {v0}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "installEdgeFeatures: package subsystem poisoned; refused until device restart ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2169
    const-string v0, "Package subsystem disabled until device restart."

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final invalidateEdgeCache()V
    .locals 1

    const/4 v0, 0x0

    .line 2136
    iput-object v0, p0, Lcom/hermes/android/BootstrapManager;->edgeInstalledCache:Ljava/lang/Boolean;

    return-void
.end method

.method public final isEdgeInstalled()Z
    .locals 9

    .line 2140
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->isInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager;->edgeInstalledCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 2143
    const-string v3, "python3 -c \'import aiohttp\' 2>/dev/null || python3 -c \'import edge_tts\' 2>/dev/null || python3 -c \'import exa_py\' 2>/dev/null || python3 -c \'import fal_client\' 2>/dev/null"

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 2151
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/BootstrapManager;->edgeInstalledCache:Ljava/lang/Boolean;

    return v1
.end method

.method public final isHermesInstalled()Z
    .locals 3

    .line 425
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v2, ".hermes-android/hermes-agent/pyproject.toml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final isInstalled()Z
    .locals 3

    .line 419
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "bin/bash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "bin/sh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isPythonInstalled()Z
    .locals 3

    .line 422
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "bin/python3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final isVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2327
    const-string v0, "unknown"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 2331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_5

    .line 2327
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2329
    :cond_0
    invoke-static {p1}, Lcom/hermes/android/BootstrapManager;->isVersionNewer$parts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/hermes/android/BootstrapManager;->isVersionNewer$parts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_5

    if-ltz v1, :cond_1

    .line 2331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ltz v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_4

    if-le v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v2
.end method

.method public final needsBundleUpgrade()Z
    .locals 2

    .line 2361
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->isHermesInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2362
    :cond_0
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->getBundledVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->getInstalledVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hermes/android/BootstrapManager;->isVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final patchPydanticVersionCheck()V
    .locals 4

    .line 3013
    sget-object v0, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    new-instance v1, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda14;-><init>()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda15;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hermes/android/BootstrapManager$Companion;->withPackageOp(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public final performUpdate(Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 2538
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hermes/android/BootstrapManager;->performUpdateImpl(Lkotlin/jvm/functions/Function1;)Z

    move-result p1
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2540
    invoke-virtual {v0}, Lcom/hermes/android/PackageSubsystemPoisonedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performUpdate: package subsystem poisoned; refused until device restart ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2541
    const-string v0, "Package subsystem disabled until device restart."

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final recoverInterruptedUpgrade()V
    .locals 12

    const-string v0, "rm -rf "

    .line 2344
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v3, ".hermes-android/hermes-agent.bak"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2346
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    const-string v4, ".hermes-android/hermes-agent"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2347
    const-string v3, "Found orphaned .bak \u2014 previous bundle upgrade was interrupted; restoring known-good copy"

    const-string v4, "BootstrapManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/hermes/android/BootstrapManager;

    .line 2350
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2351
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " && mv "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2>&1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    .line 2349
    invoke-static/range {v5 .. v11}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2348
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2353
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "recoverInterruptedUpgrade failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final repair(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2821
    sget-object v9, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v9}, Lcom/hermes/android/BootstrapManager$Companion;->requirePackageSubsystemHealthy()V

    .line 2823
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->healthCheck()Lcom/hermes/android/BootstrapManager$HealthReport;

    move-result-object v10

    .line 2824
    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->summary()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Repair start. Current health:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootstrapManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x5

    const-string v14, "Analyzing installation"

    const/4 v15, 0x0

    move-object v11, v0

    move v13, v6

    invoke-direct/range {v11 .. v17}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->getBashExists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2833
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x2

    const-string v21, "Cleaning dpkg state"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v6

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 2835
    const-string v1, "dpkg --configure -a 2>&1 || true"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    .line 2839
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->healDpkgState()V

    .line 2842
    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->getGitExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2843
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x2

    const-string v21, "Installing git"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v6

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 2845
    const-string v1, "apt-get update -y 2>&1 | tail -5 || true"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/BootstrapManager;->runInTermuxPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JILjava/lang/Object;)Lkotlin/Pair;

    const/16 v5, 0xc

    const/4 v11, 0x0

    .line 2846
    const-string v1, "apt-get install -y git 2>&1"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v12, v6

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Pair;

    goto :goto_0

    :cond_0
    move v12, v6

    .line 2850
    :goto_0
    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->getPythonExists()Z

    move-result v0

    const/4 v11, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->getPipExists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2851
    :cond_1
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x3

    const-string v21, "Reinstalling Python"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    invoke-virtual {v9}, Lcom/hermes/android/BootstrapManager$Companion;->detectTermuxArch()Ljava/lang/String;

    move-result-object v0

    .line 2853
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "python-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2855
    :try_start_0
    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    invoke-direct {v7, v0}, Lcom/hermes/android/BootstrapManager;->installPythonBundle(Ljava/lang/String;)V

    goto :goto_1

    .line 2860
    :catch_0
    new-instance v0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda25;

    invoke-direct {v0, v8, v12}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda25;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 2868
    const-string v1, "dpkg --configure -a 2>&1 || true"

    .line 2860
    const-string v2, "apt update 2>&1 || true ; apt install -y python 2>&1 || apt install -y python3 2>&1"

    invoke-direct {v7, v2, v11, v0, v1}, Lcom/hermes/android/BootstrapManager;->runWithRetryPkg(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Pair;

    .line 2876
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->getLibsqliteExists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2877
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x3

    const-string v21, "Installing libsqlite"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->ensureSqlite()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 2879
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    sget v2, Lcom/hermes/android/R$string;->error_sqlite_install:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2883
    :cond_4
    :goto_2
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x3

    const-string v21, "Rewriting launchers"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2885
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installPatches()V

    .line 2888
    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager$HealthReport;->getHermesAgentCloned()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 2889
    invoke-static {v7, v9, v10, v0}, Lcom/hermes/android/BootstrapManager;->installHermesAgent$default(Lcom/hermes/android/BootstrapManager;ZILjava/lang/Object;)V

    goto/16 :goto_4

    .line 2893
    :cond_5
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x4

    const-string v21, "Checking pip"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 2894
    const-string v1, "python3 -m pip --version 2>&1"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 2896
    const-string v1, "[repair] pip missing \u2014 installing from bundled wheel..."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2897
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x4

    const-string v21, "Bootstrapping pip"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2898
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installPipFromBundle()V

    .line 2904
    :goto_3
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x4

    const-string v21, "Installing native wheels"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2905
    new-instance v0, Lcom/hermes/android/WheelInstaller;

    iget-object v1, v7, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    iget-object v2, v7, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda26;

    invoke-direct {v3, v7}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda26;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/hermes/android/WheelInstaller;-><init>(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x4

    .line 2906
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pydantic-core"

    aput-object v2, v1, v9

    const-string v2, "jiter"

    aput-object v2, v1, v10

    const/4 v2, 0x2

    const-string v3, "cryptography"

    aput-object v3, v1, v2

    const-string v2, "pydantic"

    aput-object v2, v1, v11

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2907
    invoke-virtual {v0, v1, v10}, Lcom/hermes/android/WheelInstaller;->installFromLocal(Ljava/util/List;Z)Z

    .line 2910
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->patchPydanticVersionCheck()V

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 2915
    const-string v1, "[repair] installing core deps via installCoreDeps()..."

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2916
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const-string v21, "Installing dependencies"

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->installCoreDeps()Lkotlin/Pair;

    move-result-object v0

    .line 2918
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2919
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[repair] core deps install failed (rc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 2923
    :cond_7
    :goto_4
    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v23, 0x8

    const/16 v24, 0x0

    const-string v21, "Repair complete"

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2924
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2828
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2829
    const-string v1, "Bootstrap is missing. Use \'Full Reinstall\' instead of Repair."

    .line 2828
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resolveLatestReleaseTag()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/hermes/android/BootstrapManager$UpdateError;",
            ">;"
        }
    .end annotation

    .line 2454
    const-string v0, "import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = \'https://github.com/NousResearch/hermes-agent/releases/latest\'\n    req = urllib.request.Request(url, method=\'HEAD\')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if \'/releases/tag/\' not in final: sys.exit(13)\n    print(urllib.parse.unquote(final.rsplit(\'/\', 1)[1]))\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n"

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 2465
    const-string v3, "python3 -c \"import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = \'https://github.com/NousResearch/hermes-agent/releases/latest\'\n    req = urllib.request.Request(url, method=\'HEAD\')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if \'/releases/tag/\' not in final: sys.exit(13)\n    print(urllib.parse.unquote(final.rsplit(\'/\', 1)[1]))\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n\" 2>&1"

    const-wide/16 v4, 0x3a98

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2469
    const-string v2, "BootstrapManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x12c

    .line 2470
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resolveLatestReleaseTag failed rc="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    new-instance v0, Lkotlin/Pair;

    invoke-direct {p0, v1}, Lcom/hermes/android/BootstrapManager;->classifyUpdateRc(I)Lcom/hermes/android/BootstrapManager$UpdateError;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2473
    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 2474
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/hermes/android/BootstrapManager;->SAFE_TAG:Lkotlin/text/Regex;

    invoke-virtual {v4, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 2478
    :cond_3
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/hermes/android/BootstrapManager$UpdateError;->NONE:Lcom/hermes/android/BootstrapManager$UpdateError;

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 2475
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "resolveLatestReleaseTag: unusable tag \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/hermes/android/BootstrapManager$UpdateError;->UNKNOWN:Lcom/hermes/android/BootstrapManager$UpdateError;

    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final runInTermux(Ljava/lang/String;JZ)Lkotlin/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    const-string v1, "command"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_0

    .line 3269
    sget-object v1, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$Companion;->requirePackageSubsystemHealthy()V

    .line 3274
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "bin/bash"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bin/bash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3275
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v3, "bin/sh"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bin/sh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3276
    :cond_2
    const-string v1, "/system/bin/sh"

    .line 3279
    :goto_0
    sget-object v2, Lcom/hermes/android/EnvironmentBuilder;->INSTANCE:Lcom/hermes/android/EnvironmentBuilder;

    iget-object v3, v8, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hermes/android/EnvironmentBuilder;->build(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    .line 3283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v7, 0x1

    if-lt v2, v3, :cond_5

    .line 3284
    const-string v2, "/data/"

    invoke-static {v1, v2, v15, v14, v13}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3286
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const-string v3, "SUPPORTED_64_BIT_ABIS"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v15

    :goto_1
    if-nez v2, :cond_4

    .line 3287
    const-string v2, "/system/bin/linker64"

    goto :goto_2

    :cond_4
    const-string v2, "/system/bin/linker"

    goto :goto_2

    :cond_5
    move-object v2, v13

    :goto_2
    const/4 v3, 0x3

    if-eqz v2, :cond_6

    const/4 v4, 0x4

    .line 3291
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v15

    aput-object v1, v4, v7

    const-string v1, "-c"

    aput-object v1, v4, v14

    aput-object v0, v4, v3

    goto :goto_3

    .line 3293
    :cond_6
    new-array v4, v3, [Ljava/lang/String;

    aput-object v1, v4, v15

    const-string v1, "-c"

    aput-object v1, v4, v7

    aput-object v0, v4, v14

    :goto_3
    move-object v6, v4

    .line 3296
    const-string v1, "BootstrapManager"

    aget-object v2, v6, v15

    invoke-static {v6, v7}, Lkotlin/collections/ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "runInTermux: exec="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " args="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12c

    .line 3297
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "$ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object v13, v6

    move/from16 v6, v16

    move v14, v7

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    const/16 v17, -0x1

    if-eqz v11, :cond_7

    .line 3302
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->armWriterLease()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3303
    const-string v1, "BootstrapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runInTermux: cannot arm writer lease; refusing $PREFIX-mutating command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    const-string v2, "[exit -1] (cannot persist package-writer safety lease)"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 3305
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cannot persist package-writer safety lease"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 3308
    :cond_7
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    array-length v2, v13

    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 3309
    iget-object v2, v8, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 3310
    invoke-virtual {v1, v14}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 3312
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 3695
    array-length v2, v12

    move v3, v15

    :goto_4
    if-ge v3, v2, :cond_9

    aget-object v4, v12, v3

    .line 3314
    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    new-array v4, v14, [Ljava/lang/String;

    const-string v5, "="

    aput-object v5, v4, v15

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v24}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 3315
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v5

    const-string v7, "environment(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3318
    :cond_9
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3333
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 3334
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3335
    new-instance v13, Ljava/lang/Thread;

    .line 3371
    new-instance v3, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2, v12, v8}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda4;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;Lcom/hermes/android/BootstrapManager;)V

    .line 3335
    invoke-direct {v13, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3371
    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v9, v2

    if-nez v2, :cond_a

    .line 3375
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v17

    :goto_5
    move v7, v14

    move/from16 v9, v17

    const/16 v18, 0x0

    goto/16 :goto_7

    .line 3377
    :cond_a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9, v10, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3379
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v17

    goto :goto_5

    .line 3381
    :cond_b
    const-string v2, "BootstrapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runInTermux timeout after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms, killing tree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v1}, Lcom/hermes/android/BootstrapManager;->killProcessTreeOnTimeout(Ljava/lang/Process;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 3386
    sget-object v1, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v1, v11}, Lcom/hermes/android/BootstrapManager$Companion;->shouldPoisonOnUnconfirmedDeath(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3389
    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$Companion;->markPackageSubsystemPoisoned()V

    .line 3390
    const-string v2, "[fatal] a package subprocess could not be confirmed dead after timeout; disabling further package changes until device restart to avoid corruption."

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 3392
    const-string v1, "BootstrapManager"

    .line 3393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runInTermux: unconfirmed tree death of $PREFIX-mutating command \u2192 POISONED (orphan may keep writing $PREFIX; DEVICE RESTART required): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3392
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    new-instance v1, Lcom/hermes/android/PackageSubsystemPoisonedException;

    .line 3395
    const-string v2, "Package writer could not be confirmed dead; device restart required"

    .line 3394
    invoke-direct {v1, v2}, Lcom/hermes/android/PackageSubsystemPoisonedException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    if-nez v15, :cond_d

    .line 3397
    const-string v1, "BootstrapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runInTermux: unconfirmed subprocess tree death (read-only op, no poison): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    const/4 v1, 0x0

    :goto_6
    move-object/from16 v18, v1

    move v7, v15

    move/from16 v9, v17

    :goto_7
    if-eqz v11, :cond_e

    if-eqz v7, :cond_e

    .line 3408
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->clearWriterLease()V

    :cond_e
    const-wide/16 v1, 0x7d0

    .line 3412
    :try_start_2
    invoke-virtual {v13, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3413
    :catch_0
    monitor-enter v12

    :try_start_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v12

    const-string v1, "synchronized(...)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3414
    const-string v1, "BootstrapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[exit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/hermes/android/BootstrapManager;->appendLog$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;ZJILjava/lang/Object;)V

    .line 3417
    move-object v0, v10

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3418
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_f

    invoke-static {v10, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...(truncated)...\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_f
    move-object v0, v10

    .line 3419
    :goto_8
    const-string v1, "BootstrapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output: "

    if-eqz v9, :cond_10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_9
    if-nez v18, :cond_12

    .line 3423
    new-instance v0, Lkotlin/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 3422
    :cond_12
    throw v18

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 3413
    monitor-exit v12

    throw v1

    :catchall_1
    move-exception v0

    if-eqz v11, :cond_13

    if-nez v15, :cond_13

    .line 3404
    :try_start_4
    sget-object v1, Lcom/hermes/android/BootstrapManager;->Companion:Lcom/hermes/android/BootstrapManager$Companion;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$Companion;->markPackageSubsystemPoisoned()V

    .line 3405
    :cond_13
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v11, :cond_14

    if-eqz v15, :cond_14

    .line 3408
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->clearWriterLease()V

    :cond_14
    throw v0

    :catchall_3
    move-exception v0

    if-eqz v11, :cond_15

    .line 3320
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/BootstrapManager;->clearWriterLease()V

    .line 3321
    :cond_15
    throw v0
.end method

.method public final runInTermuxStreaming(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Process;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Process;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "command"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onLine"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3203
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v5, "bin/bash"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/bin/bash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3204
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v5, "bin/sh"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/bin/sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3205
    :cond_1
    const-string v3, "/system/bin/sh"

    .line 3207
    :goto_0
    sget-object v4, Lcom/hermes/android/EnvironmentBuilder;->INSTANCE:Lcom/hermes/android/EnvironmentBuilder;

    iget-object v5, v0, Lcom/hermes/android/BootstrapManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/hermes/android/EnvironmentBuilder;->build(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 3208
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v5, v6, :cond_4

    const-string v5, "/data/"

    invoke-static {v3, v5, v9, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3210
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const-string v6, "SUPPORTED_64_BIT_ABIS"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    if-nez v5, :cond_2

    move v5, v10

    goto :goto_1

    :cond_2
    move v5, v9

    :goto_1
    if-nez v5, :cond_3

    const-string v7, "/system/bin/linker64"

    goto :goto_2

    :cond_3
    const-string v7, "/system/bin/linker"

    .line 3212
    :cond_4
    :goto_2
    const-string v5, "-c"

    const/4 v6, 0x3

    if-eqz v7, :cond_5

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    aput-object v7, v11, v9

    aput-object v3, v11, v10

    aput-object v5, v11, v8

    aput-object v1, v11, v6

    goto :goto_3

    .line 3213
    :cond_5
    new-array v11, v6, [Ljava/lang/String;

    aput-object v3, v11, v9

    aput-object v5, v11, v10

    aput-object v1, v11, v8

    .line 3215
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "runInTermuxStreaming: cmd="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BootstrapManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    new-instance v1, Ljava/lang/ProcessBuilder;

    array-length v3, v11

    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 3217
    iget-object v3, v0, Lcom/hermes/android/BootstrapManager;->homeDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 3218
    invoke-virtual {v1, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 3220
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 3693
    array-length v3, v4

    move v5, v9

    :goto_4
    if-ge v5, v3, :cond_7

    aget-object v6, v4, v5

    .line 3222
    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v10, [Ljava/lang/String;

    const-string v6, "="

    aput-object v6, v12, v9

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 3223
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v7

    const-string v11, "environment(...)"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3226
    :cond_7
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 3229
    new-instance v3, Ljava/lang/Thread;

    .line 3251
    new-instance v4, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda20;

    invoke-direct {v4, v1, v2}, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Process;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "termux-streamer"

    .line 3229
    invoke-direct {v3, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3251
    invoke-virtual {v3, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3253
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final sqliteRepairPending()Z
    .locals 3

    .line 1205
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager;->prefixDir:Ljava/io/File;

    const-string v2, "lib/libsqlite3.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final upgradeBundleFromApk(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2376
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
