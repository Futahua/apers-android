package com.hermes.android;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.system.Os;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.location.LocationRequestCompat;
import androidx.core.os.EnvironmentCompat;
import androidx.work.WorkRequest;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.Scopes;
import com.hermes.android.DpkgHealPolicy;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.nio.channels.FileLock;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: BootstrapManager.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0007\u0018\u0000 ·\u00012\u00020\u0001:\u000eµ\u0001¶\u0001·\u0001¸\u0001¹\u0001º\u0001»\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0015H\u0002J2\u0010\u001a\u001a\u0002H\u001b\"\u0004\b\u0000\u0010\u001b2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u0002H\u001b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001fH\u0082\b¢\u0006\u0002\u0010 J\u0006\u0010.\u001a\u00020\u0015J$\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u00072\b\b\u0002\u00103\u001a\u00020\u00182\b\b\u0002\u00104\u001a\u000200H\u0002J\"\u00105\u001a\u00020\u00152\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@¢\u0006\u0002\u00109J\b\u0010:\u001a\u00020\u0015H\u0002J\b\u0010;\u001a\u00020\u0015H\u0002J\b\u0010<\u001a\u00020\u0015H\u0002J\u001e\u0010=\u001a\u00020\u00152\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00070)2\u0006\u0010?\u001a\u00020\u000bH\u0002J\u0018\u0010@\u001a\u00020\u00182\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u000bH\u0002J\b\u0010C\u001a\u00020\u0015H\u0002J)\u0010D\u001a\u00020\u00152\u0006\u0010E\u001a\u00020\u000b2\u0012\u0010F\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070G\"\u00020\u0007H\u0002¢\u0006\u0002\u0010HJ\u0010\u0010I\u001a\u00020\u00182\u0006\u0010B\u001a\u00020\u000bH\u0002J \u0010J\u001a\u00020\u00152\u0006\u0010E\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0002J\b\u0010M\u001a\u00020\u0015H\u0002J\b\u0010N\u001a\u00020\u0015H\u0002J\b\u0010O\u001a\u00020\u0015H\u0002J\b\u0010P\u001a\u00020\u0015H\u0002J\b\u0010Q\u001a\u00020\u0015H\u0002J\u0010\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u000bH\u0002J\u0006\u0010W\u001a\u00020\u0018J\u0006\u0010X\u001a\u00020\u0018J\u0006\u0010Y\u001a\u00020ZJ\b\u0010[\u001a\u00020ZH\u0002J\b\u0010\\\u001a\u00020\u0018H\u0002J+\u0010]\u001a\u0004\u0018\u0001H\u001b\"\u0004\b\u0000\u0010\u001b2\u0006\u0010^\u001a\u00020\u00072\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001fH\u0002¢\u0006\u0002\u0010_J\u0018\u0010`\u001a\u00020\u00152\u0006\u0010T\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u0007H\u0002J\u0010\u0010b\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0007H\u0002J\u0010\u0010d\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0007H\u0002J\b\u0010e\u001a\u00020\u0015H\u0002J\b\u0010f\u001a\u00020\u0015H\u0002J\b\u0010g\u001a\u00020\u0015H\u0002J\u0014\u0010h\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070iH\u0002J\u0014\u0010j\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070iH\u0002J\u0006\u0010m\u001a\u00020\u0018J\b\u0010p\u001a\u00020\u0018H\u0002J\u0006\u0010q\u001a\u00020\u0015J\b\u0010t\u001a\u00020\u0018H\u0002J\u0006\u0010u\u001a\u00020\u0015J\b\u0010v\u001a\u00020\u0015H\u0002J\u0006\u0010w\u001a\u00020\u0015J\u0012\u0010x\u001a\u00020\u00152\b\b\u0002\u0010y\u001a\u00020\u0018H\u0002J\u0010\u0010z\u001a\u00020\u00152\u0006\u0010y\u001a\u00020\u0018H\u0002J\u0006\u0010}\u001a\u00020\u0015J\u0006\u0010~\u001a\u00020\u0018J\u001e\u0010\u007f\u001a\u00020\u00182\u0016\b\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107J!\u0010\u0080\u0001\u001a\u00020\u00182\u0016\b\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107H\u0002J\u0007\u0010\u0081\u0001\u001a\u00020\u0007J\u0007\u0010\u0083\u0001\u001a\u00020\u0007J\u0019\u0010\u0084\u0001\u001a\u00020\u00182\u0007\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00020\u0007J\u0007\u0010\u0087\u0001\u001a\u00020\u0015J\u0007\u0010\u0088\u0001\u001a\u00020\u0018J#\u0010\u0089\u0001\u001a\u00020\u00182\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@¢\u0006\u0002\u00109J\u0013\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020&H\u0002J\u0016\u0010\u008d\u0001\u001a\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0005\u0012\u00030\u008b\u00010iJ\u0016\u0010\u008e\u0001\u001a\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0005\u0012\u00030\u008b\u00010iJ\b\u0010\u008f\u0001\u001a\u00030\u0090\u0001J\u001f\u0010\u0091\u0001\u001a\u00020\u00182\u0016\b\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107J!\u0010\u0092\u0001\u001a\u00020\u00182\u0016\b\u0002\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u000107H\u0002J\b\u0010\u0093\u0001\u001a\u00030\u0094\u0001J#\u0010\u0095\u0001\u001a\u00020\u00152\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@¢\u0006\u0002\u00109J#\u0010\u0096\u0001\u001a\u00020\u00152\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u001507H\u0086@¢\u0006\u0002\u00109J\u0007\u0010\u0097\u0001\u001a\u00020\u0018J\u0007\u0010\u0098\u0001\u001a\u00020\u0015J\t\u0010\u0099\u0001\u001a\u00020\u0015H\u0002J)\u0010\u009a\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\b\u0002\u0010\u009c\u0001\u001a\u000200H\u0002JV\u0010\u009d\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\b\u0002\u0010\u009e\u0001\u001a\u00020&2\u001e\b\u0002\u0010\u009f\u0001\u001a\u0017\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0018\u00010 \u00012\u000b\b\u0002\u0010¡\u0001\u001a\u0004\u0018\u00010\u0007H\u0002J\u008e\u0001\u0010¢\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\b\u0002\u0010\u009e\u0001\u001a\u00020&2@\b\u0002\u0010\u009f\u0001\u001a9\u0012\u0015\u0012\u00130&¢\u0006\u000e\b£\u0001\u0012\t\bA\u0012\u0005\b\b(¤\u0001\u0012\u0015\u0012\u00130\u0007¢\u0006\u000e\b£\u0001\u0012\t\bA\u0012\u0005\b\b(¥\u0001\u0012\u0004\u0012\u00020\u0015\u0018\u00010 \u00012\u000b\b\u0002\u0010¡\u0001\u001a\u0004\u0018\u00010\u00072\t\b\u0002\u0010\u009c\u0001\u001a\u0002002\t\b\u0002\u0010¦\u0001\u001a\u00020\u0018H\u0002J\u0007\u0010§\u0001\u001a\u00020\u0018J&\u0010¨\u0001\u001a\u00030©\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00072\u0013\u0010ª\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001507J2\u0010«\u0001\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00070i2\u0007\u0010\u009b\u0001\u001a\u00020\u00072\t\b\u0002\u0010\u009c\u0001\u001a\u0002002\t\b\u0002\u0010¦\u0001\u001a\u00020\u0018J\u0013\u0010¬\u0001\u001a\u00020\u00182\b\u0010\u00ad\u0001\u001a\u00030©\u0001H\u0002J\u0013\u0010®\u0001\u001a\u00020\u00182\b\u0010\u00ad\u0001\u001a\u00030©\u0001H\u0002J\u001b\u0010¯\u0001\u001a\u00020\u00152\u0007\u0010°\u0001\u001a\u0002002\u0007\u0010±\u0001\u001a\u00020&H\u0002J\u0013\u0010²\u0001\u001a\u0002002\b\u0010\u00ad\u0001\u001a\u00030©\u0001H\u0002J\u0018\u0010³\u0001\u001a\b\u0012\u0004\u0012\u0002000)2\u0007\u0010´\u0001\u001a\u000200H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\rR\u0011\u0010!\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b#\u0010\"R\u0011\u0010$\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b$\u0010\"R\u000e\u0010%\u001a\u00020&X\u0082D¢\u0006\u0002\n\u0000R\u001a\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070)0(X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070)0+¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010U\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bV\u0010\rR\u0014\u0010k\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bl\u0010\rR\u0014\u0010n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bo\u0010\rR\u0014\u0010r\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bs\u0010\rR\u0012\u0010{\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0004\n\u0002\u0010|R\u0011\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006¼\u0001"}, d2 = {"Lcom/hermes/android/BootstrapManager;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "filesDir", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "prefixDir", "Ljava/io/File;", "getPrefixDir", "()Ljava/io/File;", "homeDir", "getHomeDir", "tmpDir", "getTmpDir", "writerLeaseFile", "getWriterLeaseFile", "loadPoisonStateOnce", "", "currentBootId", "armWriterLease", "", "clearWriterLease", "refusingWhenPoisoned", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "what", "default", "block", "Lkotlin/Function0;", "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isInstalled", "()Z", "isPythonInstalled", "isHermesInstalled", "logCapacity", "", "_logStream", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "logStream", "Lkotlinx/coroutines/flow/StateFlow;", "getLogStream", "()Lkotlinx/coroutines/flow/StateFlow;", "clearLog", "lastLogEmitMs", "", "appendLog", "rawLine", "replaceLast", "throttleMs", "install", "onProgress", "Lkotlin/Function1;", "Lcom/hermes/android/BootstrapManager$Progress;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createDirectories", "checkDiskSpace", "downloadAndExtractBootstrap", "processSymlinks", "lines", "baseDir", "shouldBeExecutable", "name", "file", "fixPaths", "fixTextFiles", "dir", "replacements", "", "(Ljava/io/File;[Ljava/lang/String;)V", "isBinaryFile", "fixScriptShebangs", "oldPrefix", "newPrefix", "createDpkgWrapper", "configureApt", "createSecondStageLock", "healDpkgState", "healDpkgStateLocked", "healUnderFrontendLock", "Lcom/hermes/android/DpkgHealPolicy$HealOutcome;", "statusFile", "dpkgFixBrokenMarker", "getDpkgFixBrokenMarker", "dpkgRepairPending", "sqliteRepairPending", "ensureDpkgRepaired", "Lcom/hermes/android/DpkgHealPolicy$RepairResult;", "ensureDpkgRepairedImpl", "writeFixBrokenMarker", "withDpkgLock", "lockRelPath", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "writeDpkgStatusAtomic", "content", "installPythonBundle", "assetName", "installPythonBundleLocked", "installPipFromBundle", "installPipFromBundleLocked", "installPatches", "installCoreDeps", "Lkotlin/Pair;", "installCoreDepsLocked", "coreDepsMarker", "getCoreDepsMarker", "coreDepsMigrationPending", "runtimePatchesMarker", "getRuntimePatchesMarker", "runtimePatchesRefreshPending", "ensureRuntimePatchesCurrent", "openSslMarker", "getOpenSslMarker", "openSslRefreshPending", "ensureOpenSslCurrent", "refreshOpenSslFromAssetsLocked", "ensureCoreDepsCurrent", "installHermesAgent", "forceWheels", "installHermesAgentLocked", "edgeInstalledCache", "Ljava/lang/Boolean;", "invalidateEdgeCache", "isEdgeInstalled", "installEdgeFeatures", "installEdgeFeaturesImpl", "getInstalledVersion", "cachedBundledVersion", "getBundledVersion", "isVersionNewer", "a", "b", "recoverInterruptedUpgrade", "needsBundleUpgrade", "upgradeBundleFromApk", "classifyUpdateRc", "Lcom/hermes/android/BootstrapManager$UpdateError;", "rc", "resolveLatestReleaseTag", "checkRemoteVersion", "checkForUpdate", "Lcom/hermes/android/BootstrapManager$UpdateInfo;", "performUpdate", "performUpdateImpl", "healthCheck", "Lcom/hermes/android/BootstrapManager$HealthReport;", "repair", "fullReinstall", "ensureSqlite", "patchPydanticVersionCheck", "patchPydanticVersionCheckLocked", "runInTermuxPkg", "command", "timeoutMs", "runWithRetryPkg", "maxAttempts", "onRetry", "Lkotlin/Function2;", "cleanupOnRetry", "runWithRetry", "Lkotlin/ParameterName;", "attempt", "lastError", "mutatesPrefix", "hasNetwork", "runInTermuxStreaming", "Ljava/lang/Process;", "onLine", "runInTermux", "killProcessTreeOnTimeout", "process", "reapDirectChild", "sig", "pid", "signal", "pidOf", "collectDescendants", "root", "LeaseVerdict", "LeaseBootIds", "Companion", "Progress", "UpdateError", "UpdateInfo", "HealthReport", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BootstrapManager {
    private static final String BOOTSTRAP_BASE_URL = "https://github.com/termux/termux-packages/releases/download/bootstrap-2026.02.12-r1%2Bapt.android-7";
    private static final String BOOTSTRAP_RELEASE = "bootstrap-2026.02.12-r1%2Bapt.android-7";
    public static final long CORE_DEPS_LOSER_WAIT_CAP_MS = 1200000;
    public static final long CORE_DEPS_PIP_TIMEOUT_MS = 300000;
    private static final int CORE_DEPS_REVISION = 2;
    private static final String DPKG_LOCK_BACKEND = "var/lib/dpkg/lock";
    private static final String DPKG_LOCK_FRONTEND = "var/lib/dpkg/lock-frontend";
    public static final long KILL_VERIFY_TIMEOUT_MS = 15000;
    private static final int MIN_SPACE_MB = 500;
    private static final String OPENSSL_BUNDLE_REVISION = "3.6.3";
    private static final String PY_NET_ERR_CLASSIFIER = "except socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n";
    private static final int RUNTIME_PATCHES_REVISION = 2;
    private static final String TAG = "BootstrapManager";
    private static final String UPSTREAM_REPO = "NousResearch/hermes-agent";
    private final MutableStateFlow<List<String>> _logStream;
    private String cachedBundledVersion;
    private final Context context;
    private volatile Boolean edgeInstalledCache;
    private final String filesDir;
    private final File homeDir;
    private volatile long lastLogEmitMs;
    private final int logCapacity;
    private final StateFlow<List<String>> logStream;
    private final File prefixDir;
    private final File tmpDir;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Regex SAFE_TAG = new Regex("^[A-Za-z0-9._-]+$");
    private static final Set<String> DPKG_CORE_PKGS = SetsKt.setOf(new String[]{"python", "python3", "git", "libsqlite", "ca-certificates"});
    private static final Regex SAFE_PKG_NAME = new Regex("^[a-z0-9][a-z0-9.+-]*$");
    private static final Map<String, String> ABI_TO_BOOTSTRAP = MapsKt.mapOf(new Pair[]{TuplesKt.to("arm64-v8a", "aarch64"), TuplesKt.to("x86_64", "x86_64")});
    private static final List<String> OPENSSL_LIB_ENTRIES = CollectionsKt.listOf(new String[]{"lib/libcrypto.so.3", "lib/libssl.so.3", "lib/ossl-modules/legacy.so", "lib/engines-3/loader_attic.so", "lib/engines-3/capi.so"});
    private static final ReentrantLock packageOpLock = new ReentrantLock();
    private static final AtomicBoolean packageSubsystemPoisoned = new AtomicBoolean(false);
    private static final AtomicBoolean poisonStateLoaded = new AtomicBoolean(false);
    private static final Regex BOOT_UUID_RE = new Regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$");
    private static final Regex BTIME_RE = new Regex("^[0-9]+$");
    private static final AtomicBoolean coreDepsMigrationInFlight = new AtomicBoolean(false);

    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LeaseVerdict.values().length];
            try {
                iArr[LeaseVerdict.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LeaseVerdict.CLEAR_STALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LeaseVerdict.POISON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DpkgHealPolicy.Action.values().length];
            try {
                iArr2[DpkgHealPolicy.Action.MARK_INSTALLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DpkgHealPolicy.Action.REMOVE_BROKEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean healDpkgState$lambda$28() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean installCoreDeps$lambda$56() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean installHermesAgent$lambda$82() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean installPipFromBundle$lambda$43() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean installPythonBundle$lambda$38() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean patchPydanticVersionCheck$lambda$117() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean runInTermuxPkg$lambda$120() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean runWithRetryPkg$lambda$122() {
        return true;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public BootstrapManager(Context context) throws NoWhenBranchMatchedException {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        String absolutePath = context.getFilesDir().getAbsolutePath();
        this.filesDir = absolutePath;
        this.prefixDir = new File(absolutePath + "/usr");
        this.homeDir = new File(absolutePath + "/home");
        this.tmpDir = new File(absolutePath + "/tmp");
        loadPoisonStateOnce();
        this.logCapacity = 400;
        MutableStateFlow<List<String>> MutableStateFlow = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this._logStream = MutableStateFlow;
        this.logStream = FlowKt.asStateFlow(MutableStateFlow);
    }

    public static final /* synthetic */ Context access$getContext$p(BootstrapManager bootstrapManager) {
        return bootstrapManager.context;
    }

    public static final /* synthetic */ void access$installHermesAgent(BootstrapManager bootstrapManager, boolean z) {
        bootstrapManager.installHermesAgent(z);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/BootstrapManager$LeaseVerdict;", "", "<init>", "(Ljava/lang/String;I)V", "NONE", "CLEAR_STALE", "POISON", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class LeaseVerdict {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ LeaseVerdict[] $VALUES;
        public static final LeaseVerdict NONE = new LeaseVerdict("NONE", 0);
        public static final LeaseVerdict CLEAR_STALE = new LeaseVerdict("CLEAR_STALE", 1);
        public static final LeaseVerdict POISON = new LeaseVerdict("POISON", 2);

        private static final /* synthetic */ LeaseVerdict[] $values() {
            return new LeaseVerdict[]{NONE, CLEAR_STALE, POISON};
        }

        public static EnumEntries<LeaseVerdict> getEntries() {
            return $ENTRIES;
        }

        static {
            LeaseVerdict[] leaseVerdictArr$values = $values();
            $VALUES = leaseVerdictArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(leaseVerdictArr$values);
        }

        private LeaseVerdict(String str, int i) {
        }

        public static LeaseVerdict valueOf(String str) {
            return (LeaseVerdict) Enum.valueOf(LeaseVerdict.class, str);
        }

        public static LeaseVerdict[] values() {
            return (LeaseVerdict[]) $VALUES.clone();
        }
    }

    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/BootstrapManager$LeaseBootIds;", "", "bootId", "", "btime", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getBootId", "()Ljava/lang/String;", "getBtime", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class LeaseBootIds {
        public static final int $stable = 0;
        private final String bootId;
        private final String btime;

        public static /* synthetic */ LeaseBootIds copy$default(LeaseBootIds leaseBootIds, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = leaseBootIds.bootId;
            }
            if ((i & 2) != 0) {
                str2 = leaseBootIds.btime;
            }
            return leaseBootIds.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getBootId() {
            return this.bootId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getBtime() {
            return this.btime;
        }

        public final LeaseBootIds copy(String bootId, String btime) {
            return new LeaseBootIds(bootId, btime);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LeaseBootIds)) {
                return false;
            }
            LeaseBootIds leaseBootIds = (LeaseBootIds) other;
            return Intrinsics.areEqual(this.bootId, leaseBootIds.bootId) && Intrinsics.areEqual(this.btime, leaseBootIds.btime);
        }

        public int hashCode() {
            String str = this.bootId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.btime;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return "LeaseBootIds(bootId=" + this.bootId + ", btime=" + this.btime + ")";
        }

        public LeaseBootIds(String str, String str2) {
            this.bootId = str;
            this.btime = str2;
        }

        public final String getBootId() {
            return this.bootId;
        }

        public final String getBtime() {
            return this.btime;
        }
    }

    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0015\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020!J\u0006\u0010%\u001a\u00020!J\u000e\u0010&\u001a\u00020#2\u0006\u0010'\u001a\u00020#J\u0010\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0005J\u001e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020+2\u0006\u00101\u001a\u00020+J5\u00102\u001a\u0002H3\"\u0004\b\u0000\u001032\f\u00104\u001a\b\u0012\u0004\u0012\u00020#052\u0006\u00106\u001a\u0002H32\f\u00107\u001a\b\u0012\u0004\u0012\u0002H305¢\u0006\u0002\u00108J\u0006\u0010:\u001a\u00020#J\u0006\u0010;\u001a\u00020!J\u0006\u0010<\u001a\u00020#R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020>X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020>X\u0086T¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/hermes/android/BootstrapManager$Companion;", "", "<init>", "()V", "TAG", "", "BOOTSTRAP_RELEASE", "BOOTSTRAP_BASE_URL", "MIN_SPACE_MB", "", "UPSTREAM_REPO", "PY_NET_ERR_CLASSIFIER", "SAFE_TAG", "Lkotlin/text/Regex;", "DPKG_CORE_PKGS", "", "SAFE_PKG_NAME", "DPKG_LOCK_FRONTEND", "DPKG_LOCK_BACKEND", "ABI_TO_BOOTSTRAP", "", "detectTermuxArch", "CORE_DEPS_REVISION", "OPENSSL_BUNDLE_REVISION", "RUNTIME_PATCHES_REVISION", "OPENSSL_LIB_ENTRIES", "", "packageOpLock", "Ljava/util/concurrent/locks/ReentrantLock;", "packageSubsystemPoisoned", "Ljava/util/concurrent/atomic/AtomicBoolean;", "poisonStateLoaded", "markPackageSubsystemPoisoned", "", "isPackageSubsystemPoisoned", "", "resetPackageSubsystemPoisonForTest", "requirePackageSubsystemHealthy", "shouldPoisonOnUnconfirmedDeath", "mutatesPrefix", "BOOT_UUID_RE", "BTIME_RE", "parseLease", "Lcom/hermes/android/BootstrapManager$LeaseBootIds;", "content", "leaseVerdict", "Lcom/hermes/android/BootstrapManager$LeaseVerdict;", "leaseExists", "recorded", "current", "withPackageOp", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "stillNeeded", "Lkotlin/Function0;", "skip", "work", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "coreDepsMigrationInFlight", "beginCoreDepsMigration", "endCoreDepsMigration", "isCoreDepsMigrationInFlight", "CORE_DEPS_PIP_TIMEOUT_MS", "", "CORE_DEPS_LOSER_WAIT_CAP_MS", "KILL_VERIFY_TIMEOUT_MS", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean shouldPoisonOnUnconfirmedDeath(boolean mutatesPrefix) {
            return mutatesPrefix;
        }

        private Companion() {
        }

        public final String detectTermuxArch() {
            Iterator it = ArrayIteratorKt.iterator(Build.SUPPORTED_ABIS);
            while (it.hasNext()) {
                String str = (String) BootstrapManager.ABI_TO_BOOTSTRAP.get((String) it.next());
                if (str != null) {
                    return str;
                }
            }
            return "aarch64";
        }

        public final void markPackageSubsystemPoisoned() {
            BootstrapManager.packageSubsystemPoisoned.set(true);
        }

        public final boolean isPackageSubsystemPoisoned() {
            return BootstrapManager.packageSubsystemPoisoned.get();
        }

        public final void resetPackageSubsystemPoisonForTest() {
            BootstrapManager.packageSubsystemPoisoned.set(false);
            BootstrapManager.poisonStateLoaded.set(false);
        }

        public final void requirePackageSubsystemHealthy() {
            if (BootstrapManager.packageSubsystemPoisoned.get()) {
                throw new PackageSubsystemPoisonedException("Package subsystem disabled until device restart (a package writer's death could not be confirmed; an orphan may still be writing $PREFIX)");
            }
        }

        public final LeaseBootIds parseLease(String content) {
            String strRemovePrefix;
            LeaseBootIds leaseBootIds = new LeaseBootIds(null, null);
            String str = content;
            if (str == null || StringsKt.isBlank(str)) {
                return leaseBootIds;
            }
            Iterator it = StringsKt.lines(str).iterator();
            String str2 = null;
            String str3 = null;
            while (it.hasNext()) {
                String string = StringsKt.trim((String) it.next()).toString();
                String str4 = string;
                if (str4.length() != 0) {
                    if (StringsKt.startsWith$default(string, "bootid=", false, 2, (Object) null)) {
                        string = StringsKt.removePrefix(string, "bootid=");
                        if (!BootstrapManager.BOOT_UUID_RE.matches(string) || str2 != null) {
                            return leaseBootIds;
                        }
                    } else {
                        if (StringsKt.startsWith$default(string, "btime=", false, 2, (Object) null)) {
                            strRemovePrefix = StringsKt.removePrefix(string, "btime=");
                            if (!BootstrapManager.BTIME_RE.matches(strRemovePrefix) || str3 != null) {
                                return leaseBootIds;
                            }
                        } else if (!StringsKt.startsWith$default(string, "btime:", false, 2, (Object) null)) {
                            if (!BootstrapManager.BOOT_UUID_RE.matches(str4) || str2 != null) {
                                return leaseBootIds;
                            }
                        } else {
                            strRemovePrefix = StringsKt.removePrefix(string, "btime:");
                            if (!BootstrapManager.BTIME_RE.matches(strRemovePrefix) || str3 != null) {
                                return leaseBootIds;
                            }
                        }
                        str3 = strRemovePrefix;
                    }
                    str2 = string;
                }
            }
            return new LeaseBootIds(str2, str3);
        }

        public final LeaseVerdict leaseVerdict(boolean leaseExists, LeaseBootIds recorded, LeaseBootIds current) {
            Intrinsics.checkNotNullParameter(recorded, "recorded");
            Intrinsics.checkNotNullParameter(current, "current");
            if (!leaseExists) {
                return LeaseVerdict.NONE;
            }
            if (recorded.getBootId() == null || current.getBootId() == null) {
                return LeaseVerdict.POISON;
            }
            return Intrinsics.areEqual(recorded.getBootId(), current.getBootId()) ? LeaseVerdict.POISON : LeaseVerdict.CLEAR_STALE;
        }

        public final <T> T withPackageOp(Function0<Boolean> stillNeeded, T skip, Function0<? extends T> work) {
            Intrinsics.checkNotNullParameter(stillNeeded, "stillNeeded");
            Intrinsics.checkNotNullParameter(work, "work");
            requirePackageSubsystemHealthy();
            BootstrapManager.packageOpLock.lock();
            try {
                requirePackageSubsystemHealthy();
                if (((Boolean) stillNeeded.invoke()).booleanValue()) {
                    skip = (T) work.invoke();
                }
                return skip;
            } finally {
                BootstrapManager.packageOpLock.unlock();
            }
        }

        public final boolean beginCoreDepsMigration() {
            return BootstrapManager.coreDepsMigrationInFlight.compareAndSet(false, true);
        }

        public final void endCoreDepsMigration() {
            BootstrapManager.coreDepsMigrationInFlight.set(false);
        }

        public final boolean isCoreDepsMigrationInFlight() {
            return BootstrapManager.coreDepsMigrationInFlight.get();
        }
    }

    public final File getPrefixDir() {
        return this.prefixDir;
    }

    public final File getHomeDir() {
        return this.homeDir;
    }

    public final File getTmpDir() {
        return this.tmpDir;
    }

    private final File getWriterLeaseFile() {
        return new File(this.homeDir, ".hermes-android/package-writer-inflight");
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    private final void loadPoisonStateOnce() throws NoWhenBranchMatchedException {
        Object obj;
        String str;
        Object obj2;
        if (poisonStateLoaded.compareAndSet(false, true)) {
            boolean zExists = getWriterLeaseFile().exists();
            Companion companion = INSTANCE;
            if (zExists) {
                try {
                    Result.Companion companion2 = Result.Companion;
                    BootstrapManager bootstrapManager = this;
                    obj = Result.constructor-impl(FilesKt.readText$default(getWriterLeaseFile(), (Charset) null, 1, (Object) null));
                } catch (Throwable th) {
                    Result.Companion companion3 = Result.Companion;
                    obj = Result.constructor-impl(ResultKt.createFailure(th));
                }
                if (Result.isFailure-impl(obj)) {
                    obj = null;
                }
                str = (String) obj;
            } else {
                str = null;
            }
            LeaseBootIds lease = companion.parseLease(str);
            Companion companion4 = INSTANCE;
            int i = WhenMappings.$EnumSwitchMapping$0[companion4.leaseVerdict(zExists, lease, new LeaseBootIds(currentBootId(), null)).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    companion4.markPackageSubsystemPoisoned();
                    Log.e(TAG, "Package subsystem POISONED on startup: residual/unreadable writer lease this boot (a package write did not complete / an orphan may be active). Device restart required.");
                    return;
                }
                try {
                    Result.Companion companion5 = Result.Companion;
                    BootstrapManager bootstrapManager2 = this;
                    if (!getWriterLeaseFile().delete()) {
                        Log.w(TAG, "stale writer lease delete() returned false");
                    }
                    obj2 = Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion6 = Result.Companion;
                    obj2 = Result.constructor-impl(ResultKt.createFailure(th2));
                }
                Result.box-impl(obj2);
            }
        }
    }

    private final String currentBootId() {
        Object obj;
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            String string = StringsKt.trim(FilesKt.readText$default(new File("/proc/sys/kernel/random/boot_id"), (Charset) null, 1, (Object) null)).toString();
            if (!BOOT_UUID_RE.matches(string)) {
                string = null;
            }
            obj = Result.constructor-impl(string);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return (String) (Result.isFailure-impl(obj) ? null : obj);
    }

    private final boolean armWriterLease() {
        Object obj;
        String strCurrentBootId = currentBootId();
        if (strCurrentBootId == null) {
            Log.e(TAG, "cannot read boot_id (the only reliable boot-generation source); REFUSING $PREFIX writer (fail-closed: cross-process orphan protection impossible)");
            return false;
        }
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            File parentFile = getWriterLeaseFile().getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            File file = new File(getWriterLeaseFile().getPath() + ".tmp");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                FileOutputStream fileOutputStream2 = fileOutputStream;
                byte[] bytes = ("bootid=" + strCurrentBootId + "\n").getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                fileOutputStream2.write(bytes);
                fileOutputStream2.getFD().sync();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, (Throwable) null);
                obj = Result.constructor-impl(Boolean.valueOf(file.renameTo(getWriterLeaseFile())));
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        Throwable th2 = Result.exceptionOrNull-impl(obj);
        if (th2 != null) {
            Log.e(TAG, "cannot persist writer lease (disk full / IO error?): " + th2.getMessage());
            obj = false;
        }
        return ((Boolean) obj).booleanValue();
    }

    private final void clearWriterLease() {
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            if (getWriterLeaseFile().exists() && !getWriterLeaseFile().delete()) {
                Log.w(TAG, "clearWriterLease: delete() returned false; lease may persist → false poison next boot");
            }
            Result.constructor-impl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
    }

    private final <T> T refusingWhenPoisoned(String what, T t, Function0<? extends T> block) {
        try {
            return (T) block.invoke();
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, what + ": package subsystem poisoned; refused until device restart (" + e.getMessage() + ")");
            return t;
        }
    }

    public final boolean isInstalled() {
        return new File(this.prefixDir, "bin/bash").exists() || new File(this.prefixDir, "bin/sh").exists();
    }

    public final boolean isPythonInstalled() {
        return new File(this.prefixDir, "bin/python3").exists();
    }

    public final boolean isHermesInstalled() {
        return new File(this.homeDir, ".hermes-android/hermes-agent/pyproject.toml").exists();
    }

    public final StateFlow<List<String>> getLogStream() {
        return this.logStream;
    }

    public final void clearLog() {
        this._logStream.setValue(CollectionsKt.emptyList());
        this.lastLogEmitMs = 0L;
    }

    static /* synthetic */ void appendLog$default(BootstrapManager bootstrapManager, String str, boolean z, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            j = 100;
        }
        bootstrapManager.appendLog(str, z, j);
    }

    private final void appendLog(String rawLine, boolean replaceLast, long throttleMs) {
        List listPlus;
        String strTake = StringsKt.take(rawLine, MIN_SPACE_MB);
        List list = (List) this._logStream.getValue();
        if (!replaceLast || list.isEmpty()) {
            listPlus = list.size() >= this.logCapacity ? CollectionsKt.plus(CollectionsKt.drop(list, (list.size() - this.logCapacity) + 1), strTake) : CollectionsKt.plus(list, strTake);
        } else {
            listPlus = CollectionsKt.plus(CollectionsKt.dropLast(list, 1), strTake);
        }
        if (replaceLast && throttleMs > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.lastLogEmitMs < throttleMs) {
                this._logStream.setValue(listPlus);
                return;
            }
            this.lastLogEmitMs = jElapsedRealtime;
        }
        this._logStream.setValue(listPlus);
    }

    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/hermes/android/BootstrapManager$Progress;", "", "step", "", "totalSteps", "stepName", "", "detail", "<init>", "(IILjava/lang/String;Ljava/lang/String;)V", "getStep", "()I", "getTotalSteps", "getStepName", "()Ljava/lang/String;", "getDetail", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Progress {
        public static final int $stable = 0;
        private final String detail;
        private final int step;
        private final String stepName;
        private final int totalSteps;

        public static /* synthetic */ Progress copy$default(Progress progress, int i, int i2, String str, String str2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = progress.step;
            }
            if ((i3 & 2) != 0) {
                i2 = progress.totalSteps;
            }
            if ((i3 & 4) != 0) {
                str = progress.stepName;
            }
            if ((i3 & 8) != 0) {
                str2 = progress.detail;
            }
            return progress.copy(i, i2, str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getStep() {
            return this.step;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getTotalSteps() {
            return this.totalSteps;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getStepName() {
            return this.stepName;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getDetail() {
            return this.detail;
        }

        public final Progress copy(int step, int totalSteps, String stepName, String detail) {
            Intrinsics.checkNotNullParameter(stepName, "stepName");
            Intrinsics.checkNotNullParameter(detail, "detail");
            return new Progress(step, totalSteps, stepName, detail);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Progress)) {
                return false;
            }
            Progress progress = (Progress) other;
            return this.step == progress.step && this.totalSteps == progress.totalSteps && Intrinsics.areEqual(this.stepName, progress.stepName) && Intrinsics.areEqual(this.detail, progress.detail);
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.step) * 31) + Integer.hashCode(this.totalSteps)) * 31) + this.stepName.hashCode()) * 31) + this.detail.hashCode();
        }

        public String toString() {
            return "Progress(step=" + this.step + ", totalSteps=" + this.totalSteps + ", stepName=" + this.stepName + ", detail=" + this.detail + ")";
        }

        public Progress(int i, int i2, String str, String str2) {
            Intrinsics.checkNotNullParameter(str, "stepName");
            Intrinsics.checkNotNullParameter(str2, "detail");
            this.step = i;
            this.totalSteps = i2;
            this.stepName = str;
            this.detail = str2;
        }

        public final int getStep() {
            return this.step;
        }

        public final int getTotalSteps() {
            return this.totalSteps;
        }

        public final String getStepName() {
            return this.stepName;
        }

        public /* synthetic */ Progress(int i, int i2, String str, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, str, (i3 & 8) != 0 ? "" : str2);
        }

        public final String getDetail() {
            return this.detail;
        }
    }

    public final Object install(final Function1<? super Progress, Unit> function1, Continuation<? super Unit> continuation) throws IOException {
        final int i;
        String str;
        Companion companion = INSTANCE;
        companion.requirePackageSubsystemHealthy();
        String string = this.context.getString(R.string.step_1);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        int i2 = 6;
        function1.invoke(new Progress(1, i2, string, null, 8, null));
        createDirectories();
        checkDiskSpace();
        if (!isInstalled()) {
            String string2 = this.context.getString(R.string.step_2);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = this.context.getString(R.string.step_2_detail);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            function1.invoke(new Progress(2, 6, string2, string3));
            downloadAndExtractBootstrap();
        } else {
            String string4 = this.context.getString(R.string.step_2);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            String string5 = this.context.getString(R.string.step_already_exists);
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            function1.invoke(new Progress(2, 6, string4, string5));
        }
        String string6 = this.context.getString(R.string.step_3);
        Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
        int i3 = 8;
        DefaultConstructorMarker defaultConstructorMarker = null;
        String str2 = null;
        function1.invoke(new Progress(3, i2, string6, str2, i3, defaultConstructorMarker));
        fixPaths();
        configureApt();
        createDpkgWrapper();
        createSecondStageLock();
        String string7 = this.context.getString(R.string.step_4);
        Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
        function1.invoke(new Progress(4, i2, string7, str2, i3, defaultConstructorMarker));
        installPatches();
        if (!isPythonInstalled()) {
            String string8 = this.context.getString(R.string.step_5);
            Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
            String string9 = this.context.getString(R.string.step_5_detail);
            Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
            function1.invoke(new Progress(5, 6, string8, string9));
            String str3 = "python-" + companion.detectTermuxArch() + ".zip";
            try {
                this.context.getAssets().open(str3).close();
                i = 6;
                str = "getString(...)";
                appendLog$default(this, "Installing Python from bundled asset (" + str3 + ")...", false, 0L, 6, null);
                installPythonBundle(str3);
            } catch (Exception unused) {
                i = 6;
                str = "getString(...)";
                appendLog$default(this, "No bundle found, falling back to apt install...", false, 0L, 6, null);
                healDpkgState();
                Log.d(TAG, "apt update result: " + runWithRetryPkg$default(this, "apt update -o Dpkg::Options::=--force-confold 2>&1", 3, new Function2() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda35
                    public final Object invoke(Object obj, Object obj2) {
                        return BootstrapManager.install$lambda$8(function1, i, this, ((Integer) obj).intValue(), (String) obj2);
                    }
                }, null, 8, null).getFirst());
                runInTermuxPkg$default(this, "apt install -y ca-certificates 2>&1 || true", 0L, 2, null);
                Log.d(TAG, "apt install result: " + runWithRetryPkg("apt install -y python git libsqlite 2>&1 || apt install -y python3 git libsqlite 2>&1", 3, new Function2() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda36
                    public final Object invoke(Object obj, Object obj2) {
                        return BootstrapManager.install$lambda$9(function1, i, this, ((Integer) obj).intValue(), (String) obj2);
                    }
                }, "dpkg --configure -a 2>&1 || true ; apt update 2>&1 || true").getFirst());
                healDpkgState();
                String absolutePath = this.prefixDir.getAbsolutePath();
                File file = new File(this.prefixDir, "bin");
                Intrinsics.checkNotNull(absolutePath);
                fixScriptShebangs(file, "/data/data/com.termux/files/usr", absolutePath);
            }
            Boxing.boxInt(Log.d(TAG, "Install check: " + StringsKt.take((String) runInTermux$default(this, "ls -la $PREFIX/bin/python3 $PREFIX/bin/pip 2>&1", 0L, false, 6, null).getSecond(), MIN_SPACE_MB)));
        } else {
            i = 6;
            str = "getString(...)";
            String string10 = this.context.getString(R.string.step_5);
            Intrinsics.checkNotNullExpressionValue(string10, str);
            String string11 = this.context.getString(R.string.step_already_exists);
            Intrinsics.checkNotNullExpressionValue(string11, str);
            function1.invoke(new Progress(5, 6, string10, string11));
        }
        if (!ensureSqlite()) {
            throw new RuntimeException(this.context.getString(R.string.error_sqlite_install));
        }
        boolean z = isHermesInstalled() && !new File(this.homeDir, ".hermes-android/hermes-agent/hermes_cli/web_server.py").exists();
        if (!isHermesInstalled() || z) {
            String string12 = this.context.getString(R.string.step_6);
            Intrinsics.checkNotNullExpressionValue(string12, str);
            function1.invoke(new Progress(6, i, string12, null, 8, null));
            installHermesAgent$default(this, false, 1, null);
        } else {
            String string13 = this.context.getString(R.string.step_6);
            Intrinsics.checkNotNullExpressionValue(string13, str);
            String string14 = this.context.getString(R.string.step_already_exists);
            Intrinsics.checkNotNullExpressionValue(string14, str);
            function1.invoke(new Progress(6, i, string13, string14));
        }
        String string15 = this.context.getString(R.string.step_done);
        Intrinsics.checkNotNullExpressionValue(string15, str);
        function1.invoke(new Progress(i, i, string15, null, 8, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit install$lambda$8(Function1 function1, int i, BootstrapManager bootstrapManager, int i2, String str) {
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        String string = bootstrapManager.context.getString(R.string.step_5);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        function1.invoke(new Progress(5, i, string, "Network retry " + i2 + "/3 (apt update)..."));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit install$lambda$9(Function1 function1, int i, BootstrapManager bootstrapManager, int i2, String str) {
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        String string = bootstrapManager.context.getString(R.string.step_5);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        function1.invoke(new Progress(5, i, string, "Network retry " + i2 + "/3 (apt install)..."));
        return Unit.INSTANCE;
    }

    private final void createDirectories() {
        Iterator it = CollectionsKt.listOf(new File[]{this.prefixDir, this.homeDir, this.tmpDir, HermesPaths.INSTANCE.hermesHome(this.homeDir), new File(this.homeDir, ".hermes-android/patches"), new File(this.homeDir, ".hermes-android/bin")}).iterator();
        while (it.hasNext()) {
            ((File) it.next()).mkdirs();
        }
    }

    private final void checkDiskSpace() {
        if (new StatFs(this.filesDir).getAvailableBytes() / ((long) 1048576) < 500) {
            throw new RuntimeException(this.context.getString(R.string.error_no_space));
        }
    }

    private final void downloadAndExtractBootstrap() {
        InputStream inputStreamByteStream;
        String strDetectTermuxArch = INSTANCE.detectTermuxArch();
        String str = "bootstrap-" + strDetectTermuxArch + ".zip";
        String str2 = "https://github.com/termux/termux-packages/releases/download/bootstrap-2026.02.12-r1%2Bapt.android-7/bootstrap-" + strDetectTermuxArch + ".zip";
        String[] strArr = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(strArr, "SUPPORTED_ABIS");
        Log.d(TAG, "Bootstrap target arch=" + strDetectTermuxArch + " (ABIs=" + ArraysKt.joinToString$default(strArr, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null) + ")");
        try {
            inputStreamByteStream = this.context.getAssets().open(str);
        } catch (Exception unused) {
            Log.d(TAG, "Asset " + str + " not found, downloading from " + str2);
            Response responseExecute = new OkHttpClient.Builder().connectTimeout(30L, TimeUnit.SECONDS).readTimeout(5L, TimeUnit.MINUTES).build().newCall(new Request.Builder().url(str2).build()).execute();
            if (!responseExecute.isSuccessful()) {
                throw new RuntimeException(this.context.getString(R.string.error_bootstrap_download) + ": HTTP " + responseExecute.code());
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null || (inputStreamByteStream = responseBodyBody.byteStream()) == null) {
                throw new RuntimeException(this.context.getString(R.string.error_bootstrap_download));
            }
        }
        Intrinsics.checkNotNull(inputStreamByteStream);
        File file = new File(this.filesDir, "usr-staging");
        FilesKt.deleteRecursively(file);
        file.mkdirs();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        FileOutputStream zipInputStream = new ZipInputStream(new BufferedInputStream(inputStreamByteStream));
        try {
            ZipInputStream zipInputStream2 = zipInputStream;
            ZipEntry nextEntry = zipInputStream2.getNextEntry();
            while (true) {
                if (nextEntry == null) {
                    break;
                }
                if (Intrinsics.areEqual(nextEntry.getName(), "SYMLINKS.txt")) {
                    List listLines = StringsKt.lines(new String(ByteStreamsKt.readBytes(zipInputStream2), Charsets.UTF_8));
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listLines) {
                        if (!StringsKt.isBlank((String) obj)) {
                            arrayList.add(obj);
                        }
                    }
                    objectRef.element = arrayList;
                    List list = (List) objectRef.element;
                    Log.d(TAG, "Read " + (list != null ? Integer.valueOf(list.size()) : null) + " symlink entries from SYMLINKS.txt");
                } else if (nextEntry.isDirectory()) {
                    continue;
                } else {
                    File file2 = new File(file, nextEntry.getName());
                    File parentFile = file2.getParentFile();
                    if (parentFile != null) {
                        parentFile.mkdirs();
                    }
                    zipInputStream = new FileOutputStream(file2);
                    try {
                        ByteStreamsKt.copyTo$default(zipInputStream2, zipInputStream, 0, 2, (Object) null);
                        CloseableKt.closeFinally(zipInputStream, (Throwable) null);
                        String name = nextEntry.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        if (shouldBeExecutable(name, file2)) {
                            file2.setExecutable(true, false);
                        }
                    } finally {
                    }
                }
                nextEntry = zipInputStream2.getNextEntry();
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipInputStream, (Throwable) null);
            List<String> list2 = (List) objectRef.element;
            if (list2 != null) {
                processSymlinks(list2, file);
            }
            if (this.prefixDir.exists()) {
                FilesKt.deleteRecursively(this.prefixDir);
            }
            if (!file.renameTo(this.prefixDir)) {
                throw new RuntimeException("Failed to rename " + file + " to " + this.prefixDir);
            }
            Log.d(TAG, "Bootstrap extracted to " + this.prefixDir + " (bash exists: " + new File(this.prefixDir, "bin/bash").exists() + ")");
        } finally {
        }
    }

    private final void processSymlinks(List<String> lines, File baseDir) {
        String str;
        String strReplace$default;
        String str2;
        int i = 0;
        int i2 = 0;
        for (String str3 : lines) {
            int iIndexOf$default = StringsKt.indexOf$default(str3, "←", 0, false, 6, (Object) null);
            if (iIndexOf$default >= 0) {
                String strSubstring = str3.substring(0, iIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String string = StringsKt.trim(strSubstring).toString();
                String strSubstring2 = str3.substring(iIndexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                String string2 = StringsKt.trim(strSubstring2).toString();
                if (StringsKt.startsWith$default(string2, "./", false, 2, (Object) null)) {
                    String absolutePath = baseDir.getAbsolutePath();
                    String strSubstring3 = string2.substring(2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                    strReplace$default = absolutePath + "/" + strSubstring3;
                    str2 = "/data/data/com.termux/files/usr";
                    str = "getAbsolutePath(...)";
                } else {
                    String absolutePath2 = baseDir.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
                    str = "getAbsolutePath(...)";
                    strReplace$default = StringsKt.replace$default(string2, "/data/data/com.termux/files/usr", absolutePath2, false, 4, (Object) null);
                    str2 = "/data/data/com.termux/files/usr";
                }
                if (StringsKt.startsWith$default(string, str2, false, 2, (Object) null)) {
                    String absolutePath3 = baseDir.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath3, str);
                    string = StringsKt.replace$default(string, str2, absolutePath3, false, 4, (Object) null);
                }
                File file = new File(strReplace$default);
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    Os.symlink(string, file.getAbsolutePath());
                    i++;
                } catch (Exception e) {
                    i2++;
                    Log.w(TAG, "Symlink failed: " + string + " → " + strReplace$default + ": " + e.getMessage());
                }
            }
        }
        Log.d(TAG, "Symlinks: " + i + " created, " + i2 + " failed out of " + lines.size() + " total");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean shouldBeExecutable(String name, File file) {
        String str = name;
        boolean z = true;
        if (StringsKt.contains$default(str, "bin/", false, 2, (Object) null) || StringsKt.contains$default(str, "libexec/", false, 2, (Object) null) || StringsKt.contains$default(str, "lib/apt/", false, 2, (Object) null) || StringsKt.contains$default(str, "lib/bash/", false, 2, (Object) null) || StringsKt.endsWith$default(name, ".so", false, 2, (Object) null) || StringsKt.contains$default(str, ".so.", false, 2, (Object) null)) {
            return true;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4];
                if (fileInputStream.read(bArr) != 4 || bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76) {
                    z = false;
                } else if (bArr[3] != 70) {
                }
                CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                return z;
            } finally {
            }
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void fixPaths() {
        String absolutePath;
        File[] fileArrListFiles;
        int i;
        int i2;
        File[] fileArr;
        int i3;
        String absolutePath2 = this.prefixDir.getAbsolutePath();
        String absolutePath3 = this.homeDir.getAbsolutePath();
        File parentFile = this.context.getFilesDir().getParentFile();
        if (parentFile == null || (absolutePath = parentFile.getAbsolutePath()) == null) {
            absolutePath = "/data/data/" + this.context.getPackageName();
        }
        String str = absolutePath;
        boolean z = false;
        int i4 = 1;
        int i5 = 2;
        fixTextFiles(new File(this.prefixDir, "var/lib/dpkg"), "/data/data/com.termux/files/usr", absolutePath2, "/data/data/com.termux/files/home", absolutePath3);
        File file = new File(this.prefixDir, "var/lib/dpkg/info");
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            int length = fileArrListFiles.length;
            int i6 = 0;
            while (i6 < length) {
                File file2 = fileArrListFiles[i6];
                if (!file2.isFile() || file2.length() >= 5000000) {
                    i = i6;
                    i2 = length;
                    fileArr = fileArrListFiles;
                    i3 = i5;
                } else {
                    Intrinsics.checkNotNull(file2);
                    String text$default = FilesKt.readText$default(file2, (Charset) null, i4, (Object) null);
                    if (StringsKt.contains$default(text$default, "/data/data/com.termux", z, i5, (Object) null)) {
                        i = i6;
                        i2 = length;
                        fileArr = fileArrListFiles;
                        i3 = i5;
                        try {
                            FilesKt.writeText$default(file2, StringsKt.replace$default(text$default, "/data/data/com.termux", str, false, 4, (Object) null), (Charset) null, i3, (Object) null);
                        } catch (Exception unused) {
                        }
                    }
                }
                i6 = i + 1;
                i5 = i3;
                fileArrListFiles = fileArr;
                length = i2;
                z = false;
                i4 = 1;
            }
        }
        int i7 = i5;
        File file3 = new File(this.prefixDir, "etc");
        String[] strArr = new String[4];
        strArr[0] = "/data/data/com.termux/files/usr";
        strArr[1] = absolutePath2;
        strArr[i7] = "/data/data/com.termux/files/home";
        strArr[3] = absolutePath3;
        fixTextFiles(file3, strArr);
        File file4 = new File(this.prefixDir, "libexec/git-core");
        String[] strArr2 = new String[4];
        strArr2[0] = "/data/data/com.termux/files/usr";
        strArr2[1] = absolutePath2;
        strArr2[i7] = "/data/data/com.termux/files/home";
        strArr2[3] = absolutePath3;
        fixTextFiles(file4, strArr2);
        File file5 = new File(this.prefixDir, "bin");
        Intrinsics.checkNotNull(absolutePath2);
        fixScriptShebangs(file5, "/data/data/com.termux/files/usr", absolutePath2);
        fixScriptShebangs(new File(this.prefixDir, "sbin"), "/data/data/com.termux/files/usr", absolutePath2);
        File file6 = new File(this.prefixDir, "data/data/com.termux/files");
        file6.mkdirs();
        try {
            File file7 = new File(file6, "usr");
            File file8 = new File(file6, "home");
            if (!file7.exists()) {
                Os.symlink("../../../../", file7.getAbsolutePath());
            }
            if (!file8.exists()) {
                Os.symlink("../../../../home", file8.getAbsolutePath());
            }
            Log.d(TAG, "Created Termux path redirect symlinks");
        } catch (Exception e) {
            Log.w(TAG, "Redirect symlink failed: " + e.getMessage());
        }
    }

    private final void fixTextFiles(File dir, String... replacements) {
        if (dir.exists()) {
            List<List> listChunked = CollectionsKt.chunked(ArraysKt.toList(replacements), 2);
            for (File file : SequencesKt.filter(FilesKt.walkTopDown(dir), new Function1() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(BootstrapManager.fixTextFiles$lambda$17((File) obj));
                }
            })) {
                try {
                    if (!isBinaryFile(file)) {
                        String text$default = FilesKt.readText$default(file, (Charset) null, 1, (Object) null);
                        String strReplace$default = text$default;
                        boolean z = false;
                        for (List list : listChunked) {
                            String str = (String) list.get(0);
                            String str2 = (String) list.get(1);
                            if (StringsKt.contains$default(strReplace$default, str, false, 2, (Object) null)) {
                                strReplace$default = StringsKt.replace$default(strReplace$default, str, str2, false, 4, (Object) null);
                                z = true;
                            }
                        }
                        if (z) {
                            FilesKt.writeText$default(file, strReplace$default, (Charset) null, 2, (Object) null);
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean fixTextFiles$lambda$17(File file) {
        Intrinsics.checkNotNullParameter(file, "it");
        if (!file.isFile()) {
            return false;
        }
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (!StringsKt.endsWith$default(name, ".list", false, 2, (Object) null)) {
            String name2 = file.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            if (!StringsKt.endsWith$default(name2, ".conf", false, 2, (Object) null)) {
                String name3 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                if (!StringsKt.endsWith$default(name3, ".sh", false, 2, (Object) null) && !Intrinsics.areEqual(file.getName(), NotificationCompat.CATEGORY_STATUS) && !Intrinsics.areEqual(file.getName(), Scopes.PROFILE)) {
                    String name4 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                    if (!StringsKt.endsWith$default(name4, ".bashrc", false, 2, (Object) null)) {
                        String name5 = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name5, "getName(...)");
                        if (StringsKt.contains$default(name5, ".", false, 2, (Object) null)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    private final boolean isBinaryFile(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4];
                if (fileInputStream.read(bArr) < 4) {
                    CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                    return false;
                }
                byte b = bArr[0];
                boolean z = true;
                if (b == 127 && bArr[1] == 69 && bArr[2] == 76 && bArr[3] == 70) {
                    CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                    return true;
                }
                if (b == 35 && bArr[1] == 33) {
                    CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                    return false;
                }
                int i = 0;
                while (true) {
                    if (i >= 4) {
                        z = false;
                        break;
                    }
                    if (bArr[i] == 0) {
                        break;
                    }
                    i++;
                }
                CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                return z;
            } finally {
            }
        } catch (Exception unused) {
            return false;
        }
        return false;
    }

    private final void fixScriptShebangs(File dir, String oldPrefix, String newPrefix) {
        if (dir.exists()) {
            File[] fileArrListFiles = dir.listFiles();
            int i = 0;
            if (fileArrListFiles != null) {
                int i2 = 0;
                for (File file : fileArrListFiles) {
                    if (file.isFile() && file.length() >= 3 && file.length() <= 1000000) {
                        try {
                            Intrinsics.checkNotNull(file);
                            FileInputStream fileInputStream = new FileInputStream(file);
                            try {
                                byte[] bArr = new byte[2];
                                if (fileInputStream.read(bArr) != 2) {
                                    CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                                } else if (bArr[0] != 35 || bArr[1] != 33) {
                                    CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                                } else {
                                    Unit unit = Unit.INSTANCE;
                                    CloseableKt.closeFinally(fileInputStream, (Throwable) null);
                                    String text$default = FilesKt.readText$default(file, (Charset) null, 1, (Object) null);
                                    if (StringsKt.contains$default(text$default, oldPrefix, false, 2, (Object) null)) {
                                        FilesKt.writeText$default(file, StringsKt.replace$default(text$default, oldPrefix, newPrefix, false, 4, (Object) null), (Charset) null, 2, (Object) null);
                                        i2++;
                                    }
                                }
                            } finally {
                            }
                        } catch (Exception unused) {
                            continue;
                        }
                    }
                }
                i = i2;
            }
            Log.d(TAG, "Fixed " + i + " script shebangs in " + dir.getName() + "/");
        }
    }

    private final void createDpkgWrapper() {
        File file = new File(this.prefixDir, "bin/dpkg");
        File file2 = new File(this.prefixDir, "bin/dpkg.real");
        if (!file.exists()) {
            Log.w(TAG, "dpkg binary not found, skipping wrapper creation");
            return;
        }
        if (file2.exists()) {
            Log.d(TAG, "dpkg wrapper already exists");
            return;
        }
        if (!file.renameTo(file2)) {
            Log.e(TAG, "Failed to rename dpkg to dpkg.real");
            return;
        }
        file2.setExecutable(true, false);
        String absolutePath = this.prefixDir.getAbsolutePath();
        FilesKt.writeText$default(file, StringsKt.trimMargin$default("\n            |#!/" + absolutePath + "/bin/bash\n            |# dpkg wrapper: suppress confdir errors from hardcoded com.termux paths.\n            |# Uses only bash builtins — no grep/rm/cat dependency.\n            |\n            |export PATH=\"" + absolutePath + "/bin:" + absolutePath + "/bin/applets:$PATH\"\n            |_realPath=\"" + absolutePath + "/bin/dpkg.real\"\n            |_errtmp=\"${TMPDIR:-/tmp}/dpkg-err.$$\"\n            |\n            |\"$_realPath\" \"$@\" 2>\"$_errtmp\"\n            |_rc=$?\n            |\n            |if [ $_rc -ne 0 ]; then\n            |    # Read stderr and check if it's only dpkg.cfg.d errors (bash builtins only)\n            |    _has_real_error=0\n            |    while IFS= read -r _line; do\n            |        [[ -z \"$_line\" ]] && continue\n            |        [[ \"$_line\" == *\"dpkg.cfg.d\"* ]] && continue\n            |        [[ \"$_line\" == *\"configuration directory\"* ]] && continue\n            |        # Found a real error line\n            |        _has_real_error=1\n            |        echo \"$_line\" >&2\n            |    done < \"$_errtmp\"\n            |    rm -f \"$_errtmp\" 2>/dev/null\n            |    if [ $_has_real_error -eq 0 ]; then\n            |        exit 0\n            |    fi\n            |    exit $_rc\n            |fi\n            |\n            |# Success — filter harmless warnings\n            |if [ -s \"$_errtmp\" ]; then\n            |    while IFS= read -r _line; do\n            |        [[ -z \"$_line\" ]] && continue\n            |        [[ \"$_line\" == *\"dpkg.cfg.d\"* ]] && continue\n            |        [[ \"$_line\" == *\"configuration directory\"* ]] && continue\n            |        echo \"$_line\" >&2\n            |    done < \"$_errtmp\"\n            |fi\n            |rm -f \"$_errtmp\" 2>/dev/null\n            |exit 0\n        ", (String) null, 1, (Object) null), (Charset) null, 2, (Object) null);
        file.setExecutable(true, false);
        Log.d(TAG, "Created dpkg wrapper script (real binary at dpkg.real)");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x021a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void configureApt() {
        String absolutePath;
        File[] fileArrListFiles;
        Iterator it = CollectionsKt.listOf(new String[]{"etc/apt/apt.conf.d", "etc/apt/preferences.d", "etc/dpkg/dpkg.cfg.d", "var/lib/apt/lists/partial", "var/cache/apt/archives/partial", "var/log/apt"}).iterator();
        while (it.hasNext()) {
            new File(this.prefixDir, (String) it.next()).mkdirs();
        }
        String absolutePath2 = this.prefixDir.getAbsolutePath();
        FilesKt.writeText$default(new File(this.prefixDir, "etc/apt/apt.conf"), StringsKt.trimMargin$default("\n            |Dir \"/\";\n            |Dir::State \"" + absolutePath2 + "/var/lib/apt/\";\n            |Dir::State::status \"" + absolutePath2 + "/var/lib/dpkg/status\";\n            |Dir::Cache \"" + absolutePath2 + "/var/cache/apt/\";\n            |Dir::Log \"" + absolutePath2 + "/var/log/apt/\";\n            |Dir::Etc \"" + absolutePath2 + "/etc/apt/\";\n            |Dir::Etc::trusted \"" + absolutePath2 + "/etc/apt/trusted.gpg\";\n            |Dir::Etc::trustedparts \"" + absolutePath2 + "/etc/apt/trusted.gpg.d/\";\n            |Dir::Bin::dpkg \"" + absolutePath2 + "/bin/dpkg\";\n            |Dir::Bin::methods \"" + absolutePath2 + "/lib/apt/methods/\";\n            |Dir::Bin::solvers \"" + absolutePath2 + "/lib/apt/solvers/\";\n            |Dir::Bin::planners \"" + absolutePath2 + "/lib/apt/planners/\";\n            |Dpkg::Options:: \"--force-configure-any\";\n            |Dpkg::Options:: \"--force-bad-path\";\n            |Dpkg::Options:: \"--force-confold\";\n            |Dpkg::Options:: \"--force-depends\";\n            |Dpkg::Options:: \"--instdir=" + absolutePath2 + "\";\n            |Dpkg::Options:: \"--admindir=" + absolutePath2 + "/var/lib/dpkg\";\n            |Acquire::AllowInsecureRepositories \"true\";\n            |Acquire::https::Verify-Peer \"false\";\n            |Acquire::https::Verify-Host \"false\";\n            |APT::Get::AllowUnauthenticated \"true\";\n        ", (String) null, 1, (Object) null), (Charset) null, 2, (Object) null);
        File file = new File(this.prefixDir, "etc/dpkg/dpkg.cfg");
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        FilesKt.writeText$default(file, StringsKt.trimMargin$default("\n            |admindir=" + this.prefixDir.getAbsolutePath() + "/var/lib/dpkg\n            |instdir=" + this.prefixDir.getAbsolutePath() + "\n            |force-configure-any\n            |force-bad-path\n        ", (String) null, 1, (Object) null), (Charset) null, 2, (Object) null);
        String packageName = this.context.getPackageName();
        File file2 = new File(this.prefixDir, "etc/apt/sources.list");
        if (file2.exists()) {
            String text$default = FilesKt.readText$default(file2, (Charset) null, 1, (Object) null);
            Intrinsics.checkNotNull(packageName);
            String strReplace$default = StringsKt.replace$default(text$default, "com.termux", packageName, false, 4, (Object) null);
            if (!StringsKt.contains$default(strReplace$default, "[trusted=yes]", false, 2, (Object) null)) {
                strReplace$default = StringsKt.replace$default(strReplace$default, "deb ", "deb [trusted=yes] ", false, 4, (Object) null);
            }
            FilesKt.writeText$default(file2, strReplace$default, (Charset) null, 2, (Object) null);
        }
        File parentFile2 = this.context.getFilesDir().getParentFile();
        if (parentFile2 == null || (absolutePath = parentFile2.getAbsolutePath()) == null) {
            absolutePath = "/data/data/" + packageName;
        }
        Iterator it2 = CollectionsKt.listOf(new String[]{"etc/profile", "etc/bash.bashrc"}).iterator();
        while (it2.hasNext()) {
            File file3 = new File(this.prefixDir, (String) it2.next());
            if (file3.exists()) {
                FilesKt.writeText$default(file3, StringsKt.replace$default(FilesKt.readText$default(file3, (Charset) null, 1, (Object) null), "/data/data/com.termux", absolutePath, false, 4, (Object) null), (Charset) null, 2, (Object) null);
            }
        }
        File file4 = new File(this.prefixDir, "etc/profile.d");
        if (!file4.isDirectory()) {
            file4 = null;
        }
        if (file4 == null || (fileArrListFiles = file4.listFiles()) == null) {
            return;
        }
        ArrayList<File> arrayList = new ArrayList();
        for (File file5 : fileArrListFiles) {
            String name = file5.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (!StringsKt.endsWith$default(name, ".sh", false, 2, (Object) null)) {
                String name2 = file5.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                if (StringsKt.endsWith$default(name2, ".csh", false, 2, (Object) null)) {
                    arrayList.add(file5);
                }
            }
        }
        for (File file6 : arrayList) {
            Intrinsics.checkNotNull(file6);
            FilesKt.writeText$default(file6, StringsKt.replace$default(FilesKt.readText$default(file6, (Charset) null, 1, (Object) null), "/data/data/com.termux", absolutePath, false, 4, (Object) null), (Charset) null, 2, (Object) null);
        }
    }

    private final void createSecondStageLock() {
        File file = new File(this.prefixDir, "etc/termux/termux-bootstrap/second-stage");
        file.mkdirs();
        File file2 = new File(file, "termux-bootstrap-second-stage.sh.lock");
        try {
            if (file2.exists()) {
                return;
            }
            Os.symlink("/dev/null", file2.getAbsolutePath());
        } catch (Exception unused) {
        }
    }

    private final void healDpkgState() {
        INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda5
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.healDpkgState$lambda$28());
            }
        }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda6
            public final Object invoke() {
                return BootstrapManager.healDpkgState$lambda$29(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit healDpkgState$lambda$29(BootstrapManager bootstrapManager) {
        bootstrapManager.healDpkgStateLocked();
        return Unit.INSTANCE;
    }

    private final void healDpkgStateLocked() {
        DpkgHealPolicy.HealOutcome healOutcome;
        final File file = new File(this.prefixDir, "var/lib/dpkg/status");
        if (file.exists() && (healOutcome = (DpkgHealPolicy.HealOutcome) withDpkgLock(DPKG_LOCK_FRONTEND, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda16
            public final Object invoke() {
                return this.f$0.healUnderFrontendLock(file);
            }
        })) != null) {
            if (DpkgHealPolicy.INSTANCE.shouldRunFixBroken(getDpkgFixBrokenMarker().exists(), healOutcome == DpkgHealPolicy.HealOutcome.FORCE_REMOVED)) {
                appendLog$default(this, "[dpkg-heal] repairing dependency graph after forced removal (apt --fix-broken install)", false, 0L, 6, null);
                int iIntValue = ((Number) runInTermux("apt-get -y -f install 2>&1", 300000L, true).component1()).intValue();
                if (iIntValue != 0) {
                    Log.w(TAG, "dpkg-heal: apt --fix-broken install rc=" + iIntValue + "; marker kept for retry");
                }
                DpkgHealPolicy.HealOutcome healOutcome2 = (DpkgHealPolicy.HealOutcome) withDpkgLock(DPKG_LOCK_FRONTEND, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda17
                    public final Object invoke() {
                        return this.f$0.healUnderFrontendLock(file);
                    }
                });
                if (healOutcome2 == null) {
                    healOutcome2 = DpkgHealPolicy.HealOutcome.UNCONFIRMED;
                }
                if (DpkgHealPolicy.INSTANCE.mayClearFixBrokenMarker(iIntValue, healOutcome2)) {
                    getDpkgFixBrokenMarker().delete();
                    appendLog$default(this, "[dpkg-heal] dependency graph repaired; pending marker cleared", false, 0L, 6, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DpkgHealPolicy.HealOutcome healUnderFrontendLock(final File statusFile) {
        if (INSTANCE.isPackageSubsystemPoisoned()) {
            return DpkgHealPolicy.HealOutcome.UNCONFIRMED;
        }
        final ArrayList<String> arrayList = new ArrayList();
        if (!Intrinsics.areEqual((Boolean) withDpkgLock(DPKG_LOCK_BACKEND, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda0
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.healUnderFrontendLock$lambda$35(statusFile, this, arrayList));
            }
        }), true)) {
            return DpkgHealPolicy.HealOutcome.UNCONFIRMED;
        }
        boolean z = false;
        for (String str : arrayList) {
            if (!SAFE_PKG_NAME.matches(str)) {
                Log.w(TAG, "dpkg-heal: skip removal of suspicious package name '" + str + "'");
            } else {
                appendLog$default(this, "[dpkg-heal] removing broken package: " + str, false, 0L, 6, null);
                File file = new File(this.prefixDir, "var/lib/dpkg/info");
                Iterator it = CollectionsKt.listOf(new String[]{"preinst", "postinst", "prerm", "postrm"}).iterator();
                while (it.hasNext()) {
                    new File(file, str + "." + ((String) it.next())).delete();
                }
                Pair<Integer, String> pairRunInTermux = runInTermux("DPKG_FRONTEND_LOCKED=1 dpkg --remove --force-remove-reinstreq " + str + " 2>&1", 60000L, true);
                int iIntValue = ((Number) pairRunInTermux.component1()).intValue();
                String str2 = (String) pairRunInTermux.component2();
                if (iIntValue != 0) {
                    Log.w(TAG, "dpkg-heal: remove " + str + " failed (rc=" + iIntValue + "): " + StringsKt.takeLast(str2, 200));
                    if (DpkgHealPolicy.INSTANCE.escalateToForceDepends(str2)) {
                        if (!writeFixBrokenMarker()) {
                            appendLog$default(this, "[dpkg-heal] cannot persist repair marker; deferring " + str + " to next round", false, 0L, 6, null);
                        } else {
                            Pair<Integer, String> pairRunInTermux2 = runInTermux("DPKG_FRONTEND_LOCKED=1 dpkg --remove --force-remove-reinstreq --force-depends " + str + " 2>&1", 60000L, true);
                            int iIntValue2 = ((Number) pairRunInTermux2.component1()).intValue();
                            String str3 = (String) pairRunInTermux2.component2();
                            if (iIntValue2 == 0) {
                                appendLog$default(this, "[dpkg-heal] " + str + " removed with --force-depends (rdepends were already broken)", false, 0L, 6, null);
                                z = true;
                            } else {
                                Log.w(TAG, "dpkg-heal: force-depends remove " + str + " failed (rc=" + iIntValue2 + "): " + StringsKt.takeLast(str3, 200));
                                appendLog$default(this, "[dpkg-heal] " + str + " removal failed; leaving for next attempt", false, 0L, 6, null);
                            }
                        }
                    } else {
                        appendLog$default(this, "[dpkg-heal] " + str + " removal failed (non-dependency); leaving for next attempt", false, 0L, 6, null);
                    }
                }
            }
        }
        if (z) {
            return DpkgHealPolicy.HealOutcome.FORCE_REMOVED;
        }
        return DpkgHealPolicy.HealOutcome.CLEAN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean healUnderFrontendLock$lambda$35(File file, BootstrapManager bootstrapManager, List list) {
        Object next;
        Object next2;
        boolean z;
        String strRemovePrefix;
        String string;
        boolean z2 = true;
        try {
            List<String> listSplit$default = StringsKt.split$default(FilesKt.readText$default(file, (Charset) null, 1, (Object) null), new String[]{"\n\n"}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
            int i = 0;
            for (String strReplace$default : listSplit$default) {
                Iterator it = StringsKt.lineSequence(strReplace$default).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (StringsKt.startsWith$default((String) next, "Status: ", false, 2, (Object) null)) {
                        break;
                    }
                }
                String str = (String) next;
                if (str == null) {
                    z = z2;
                } else {
                    Iterator it2 = StringsKt.lineSequence(strReplace$default).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it2.next();
                        if (StringsKt.startsWith$default((String) next2, "Package: ", false, 2, (Object) null)) {
                            break;
                        }
                    }
                    String str2 = (String) next2;
                    if (str2 == null || (strRemovePrefix = StringsKt.removePrefix(str2, "Package: ")) == null || (string = StringsKt.trim(strRemovePrefix).toString()) == null) {
                        z = true;
                    } else {
                        int i2 = WhenMappings.$EnumSwitchMapping$1[DpkgHealPolicy.INSTANCE.classify(str, DPKG_CORE_PKGS.contains(string)).ordinal()];
                        if (i2 != 1) {
                            if (i2 == 2) {
                                list.add(string);
                            }
                            z = true;
                        } else {
                            i++;
                            Log.d(TAG, "dpkg-heal: " + string + " '" + StringsKt.removePrefix(str, "Status: ") + "' → installed");
                            z = true;
                            strReplace$default = StringsKt.replace$default(strReplace$default, str, "Status: install ok installed", false, 4, (Object) null);
                        }
                    }
                }
                arrayList.add(strReplace$default);
                z2 = z;
            }
            boolean z3 = z2;
            ArrayList arrayList2 = arrayList;
            if (i > 0) {
                bootstrapManager.writeDpkgStatusAtomic(file, CollectionsKt.joinToString$default(arrayList2, "\n\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
                appendLog$default(bootstrapManager, "[dpkg-heal] marked " + i + " interrupted package(s) as installed", false, 0L, 6, null);
            }
            return z3;
        } catch (Exception e) {
            Log.w(TAG, "healDpkgState: status surgery failed: " + e.getMessage());
            return false;
        }
    }

    private final File getDpkgFixBrokenMarker() {
        return new File(this.homeDir, ".hermes-android/dpkg-fixbroken-pending");
    }

    public final boolean dpkgRepairPending() {
        return getDpkgFixBrokenMarker().exists();
    }

    public final boolean sqliteRepairPending() {
        return !new File(this.prefixDir, "lib/libsqlite3.so").exists();
    }

    public final DpkgHealPolicy.RepairResult ensureDpkgRepaired() {
        try {
            return ensureDpkgRepairedImpl();
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "ensureDpkgRepaired: package subsystem poisoned; deferred until device restart (" + e.getMessage() + ")");
            return DpkgHealPolicy.RepairResult.DEFERRED;
        }
    }

    private final DpkgHealPolicy.RepairResult ensureDpkgRepairedImpl() {
        if (!dpkgRepairPending()) {
            return DpkgHealPolicy.RepairResult.NOT_PENDING;
        }
        if (!new File(this.prefixDir, "var/lib/dpkg/status").exists()) {
            Log.w(TAG, "dpkg repair pending but status DB missing — bootstrap damaged; deferring");
            appendLog$default(this, "[dpkg-heal] dpkg database missing; run Repair (or reinstall) to rebuild the environment", false, 0L, 6, null);
            return DpkgHealPolicy.RepairResult.DEFERRED;
        }
        if (!hasNetwork()) {
            Log.i(TAG, "dpkg repair deferred: offline (retry next launch)");
            return DpkgHealPolicy.RepairResult.DEFERRED;
        }
        Log.i(TAG, "dpkg fix-broken marker present; running heal to repair dependency graph");
        healDpkgState();
        return DpkgHealPolicy.INSTANCE.repairResult(true, dpkgRepairPending());
    }

    private final boolean writeFixBrokenMarker() {
        try {
            File parentFile = getDpkgFixBrokenMarker().getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FilesKt.writeText$default(getDpkgFixBrokenMarker(), "1", (Charset) null, 2, (Object) null);
            return true;
        } catch (Exception e) {
            Log.w(TAG, "dpkg-heal: marker write failed: " + e.getMessage());
            return false;
        }
    }

    private final <T> T withDpkgLock(String lockRelPath, Function0<? extends T> block) {
        File file = new File(this.prefixDir, lockRelPath);
        try {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                FileLock fileLockTryLock = randomAccessFile.getChannel().tryLock();
                if (fileLockTryLock == null) {
                    BootstrapManager bootstrapManager = this;
                    Log.i(TAG, "dpkg-heal: " + lockRelPath + " busy (dpkg/apt running); skip this round");
                    CloseableKt.closeFinally(randomAccessFile, (Throwable) null);
                    return null;
                }
                try {
                    T t = (T) block.invoke();
                    CloseableKt.closeFinally(randomAccessFile, (Throwable) null);
                    return t;
                } finally {
                    fileLockTryLock.release();
                }
            } finally {
            }
        } catch (Exception e) {
            Log.w(TAG, "dpkg-heal: lock acquisition failed (" + lockRelPath + "): " + e.getMessage());
            return null;
        }
        Log.w(TAG, "dpkg-heal: lock acquisition failed (" + lockRelPath + "): " + e.getMessage());
        return null;
    }

    private final void writeDpkgStatusAtomic(File statusFile, String content) throws IOException {
        File file = new File(statusFile.getParentFile(), "status.hermes-heal.tmp");
        FilesKt.writeText$default(file, content, (Charset) null, 2, (Object) null);
        if (file.renameTo(statusFile)) {
            return;
        }
        file.delete();
        throw new IOException("atomic rename failed for dpkg status");
    }

    private final void installPythonBundle(final String assetName) {
        INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda33
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.installPythonBundle$lambda$38());
            }
        }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda34
            public final Object invoke() {
                return BootstrapManager.installPythonBundle$lambda$39(this.f$0, assetName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit installPythonBundle$lambda$39(BootstrapManager bootstrapManager, String str) throws IOException {
        bootstrapManager.installPythonBundleLocked(str);
        return Unit.INSTANCE;
    }

    private final void installPythonBundleLocked(String assetName) throws IOException {
        ArrayList<Pair> arrayList = new ArrayList();
        appendLog$default(this, "[bundle] Extracting " + assetName + " to " + this.prefixDir + " ...", false, 0L, 6, null);
        FileOutputStream fileOutputStreamOpen = this.context.getAssets().open(assetName);
        try {
            fileOutputStreamOpen = new ZipInputStream(new BufferedInputStream(fileOutputStreamOpen));
            try {
                ZipInputStream zipInputStream = fileOutputStreamOpen;
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                while (nextEntry != null) {
                    String name = nextEntry.getName();
                    if (Intrinsics.areEqual(name, "SYMLINKS.txt")) {
                        Iterator it = StringsKt.lines(new String(ByteStreamsKt.readBytes(zipInputStream), Charsets.UTF_8)).iterator();
                        while (it.hasNext()) {
                            List listSplit$default = StringsKt.split$default((String) it.next(), new String[]{"←"}, false, 0, 6, (Object) null);
                            if (listSplit$default.size() == 2) {
                                arrayList.add(new Pair(StringsKt.trim((String) listSplit$default.get(0)).toString(), StringsKt.trim((String) listSplit$default.get(1)).toString()));
                            }
                        }
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    } else {
                        File file = new File(this.prefixDir, name);
                        if (nextEntry.isDirectory()) {
                            file.mkdirs();
                        } else {
                            File parentFile = file.getParentFile();
                            if (parentFile != null) {
                                parentFile.mkdirs();
                            }
                            fileOutputStreamOpen = new FileOutputStream(file);
                            try {
                                ByteStreamsKt.copyTo$default(zipInputStream, fileOutputStreamOpen, 0, 2, (Object) null);
                                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                                Intrinsics.checkNotNull(name);
                                if (StringsKt.startsWith$default(name, "bin/", false, 2, (Object) null) || StringsKt.contains$default(name, "/bin/", false, 2, (Object) null)) {
                                    file.setExecutable(true, false);
                                }
                            } finally {
                            }
                        }
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    }
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                appendLog$default(this, "[bundle] Creating " + arrayList.size() + " symlinks...", false, 0L, 6, null);
                for (Pair pair : arrayList) {
                    String str = (String) pair.component1();
                    String str2 = (String) pair.component2();
                    File file2 = new File(this.prefixDir, str2);
                    File parentFile2 = file2.getParentFile();
                    if (parentFile2 != null) {
                        parentFile2.mkdirs();
                    }
                    try {
                        if (file2.exists() || Files.isSymbolicLink(file2.toPath())) {
                            file2.delete();
                        }
                        Os.symlink(str, file2.getAbsolutePath());
                        Unit unit3 = Unit.INSTANCE;
                    } catch (Exception e) {
                        Integer.valueOf(Log.w(TAG, "symlink failed: " + str2 + " → " + str + ": " + e.getMessage()));
                    }
                }
                String absolutePath = this.prefixDir.getAbsolutePath();
                File file3 = new File(this.prefixDir, "bin");
                Intrinsics.checkNotNull(absolutePath);
                fixScriptShebangs(file3, "/data/data/com.termux/files/usr", absolutePath);
                appendLog$default(this, "[bundle] Python bundle installed.", false, 0L, 6, null);
                installPipFromBundle();
                Log.d(TAG, "installPythonBundle done — prefix=" + absolutePath);
            } finally {
            }
        } finally {
        }
    }

    private final void installPipFromBundle() {
        INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda28
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.installPipFromBundle$lambda$43());
            }
        }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda29
            public final Object invoke() {
                return BootstrapManager.installPipFromBundle$lambda$44(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit installPipFromBundle$lambda$44(BootstrapManager bootstrapManager) {
        bootstrapManager.installPipFromBundleLocked();
        return Unit.INSTANCE;
    }

    private final void installPipFromBundleLocked() {
        File file;
        File[] fileArrListFiles = new File(this.prefixDir, "lib/python3.13/ensurepip/_bundled").listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.startsWith$default(name, "pip-", false, 2, (Object) null)) {
                    String name2 = file2.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (StringsKt.endsWith$default(name2, ".whl", false, 2, (Object) null)) {
                        file = file2;
                        break;
                    }
                }
            }
            file = null;
        } else {
            file = null;
        }
        if (file == null) {
            Log.w(TAG, "installPipFromBundle: no pip wheel in _bundled/");
            appendLog$default(this, "[pip] WARNING: no bundled pip wheel found", false, 0L, 6, null);
            return;
        }
        appendLog$default(this, "[pip] Installing pip from " + file.getName() + " ...", false, 0L, 6, null);
        File file3 = new File(this.prefixDir, "lib/python3.13/site-packages");
        file3.mkdirs();
        FileOutputStream zipFile = new ZipFile(file);
        try {
            ZipFile zipFile2 = zipFile;
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
            Intrinsics.checkNotNullExpressionValue(enumerationEntries, "entries(...)");
            for (ZipEntry zipEntry : SequencesKt.asSequence(CollectionsKt.iterator(enumerationEntries))) {
                if (!zipEntry.isDirectory()) {
                    File file4 = new File(file3, zipEntry.getName());
                    File parentFile = file4.getParentFile();
                    if (parentFile != null) {
                        parentFile.mkdirs();
                    }
                    zipFile = zipFile2.getInputStream(zipEntry);
                    try {
                        InputStream inputStream = zipFile;
                        zipFile = new FileOutputStream(file4);
                        try {
                            Intrinsics.checkNotNull(inputStream);
                            ByteStreamsKt.copyTo$default(inputStream, zipFile, 0, 2, (Object) null);
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(zipFile, (Throwable) null);
                            Unit unit2 = Unit.INSTANCE;
                            CloseableKt.closeFinally(zipFile, (Throwable) null);
                        } finally {
                        }
                    } finally {
                    }
                }
            }
            Unit unit3 = Unit.INSTANCE;
            CloseableKt.closeFinally(zipFile, (Throwable) null);
            String absolutePath = new File(this.prefixDir, "bin/bash").getAbsolutePath();
            File file5 = new File(this.prefixDir, "bin");
            Iterator it = CollectionsKt.listOf(new String[]{"pip", "pip3", "pip3.13"}).iterator();
            while (it.hasNext()) {
                File file6 = new File(file5, (String) it.next());
                FilesKt.writeText$default(file6, "#!" + absolutePath + "\nexec python3 -m pip \"$@\"\n", (Charset) null, 2, (Object) null);
                file6.setExecutable(true, false);
            }
            appendLog$default(this, "[pip] pip installed to site-packages, bin/pip3 created", false, 0L, 6, null);
        } finally {
        }
    }

    private final void installPatches() throws IOException {
        File file = new File(this.homeDir, ".hermes-android/patches");
        file.mkdirs();
        for (String str : CollectionsKt.listOf(new String[]{"monkey_patch.py", "sitecustomize.py"})) {
            File file2 = new File(file, str);
            File file3 = new File(file, str + ".tmp");
            try {
                FileOutputStream fileOutputStreamOpen = this.context.getAssets().open("patches/" + str);
                try {
                    InputStream inputStream = fileOutputStreamOpen;
                    fileOutputStreamOpen = new FileOutputStream(file3);
                    try {
                        Intrinsics.checkNotNull(inputStream);
                        ByteStreamsKt.copyTo$default(inputStream, fileOutputStreamOpen, 0, 2, (Object) null);
                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                        if (file3.length() <= 0) {
                            throw new IOException("copied " + str + " is empty");
                        }
                        if (!file3.renameTo(file2)) {
                            throw new IOException("rename " + str + " failed");
                        }
                    } finally {
                    }
                } finally {
                }
            } catch (Exception e) {
                try {
                    Result.Companion companion = Result.Companion;
                    if (file3.exists()) {
                        file3.delete();
                    }
                    Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th));
                }
                Exception exc = e;
                Log.e(TAG, "installPatches: critical patch '" + str + "' failed — aborting (marker won't commit)", exc);
                throw new IOException("installPatches failed for " + str + ": " + e.getMessage(), exc);
            }
        }
        File file4 = new File(this.homeDir, ".hermes-android/bin");
        file4.mkdirs();
        String absolutePath = new File(this.prefixDir, "bin/bash").getAbsolutePath();
        File file5 = new File(file4, "hermes");
        FilesKt.writeText$default(file5, StringsKt.trimMargin$default("\n                |#!" + absolutePath + "\n                |set -euo pipefail\n                |export TMPDIR=\"${TMPDIR:-$PREFIX/tmp}\"\n                |export HERMES_HOME=\"${HERMES_HOME:-$HOME/.hermes}\"\n                |export SHELL=\"${SHELL:-$PREFIX/bin/bash}\"\n                |PATCH_DIR=\"$HOME/.hermes-android/patches\"\n                |HERMES_SRC=\"$HOME/.hermes-android/hermes-agent\"\n                |export PYTHONPATH=\"${PATCH_DIR}:${HERMES_SRC}:${PYTHONPATH:-}\"\n                |exec python3 -c \"\n                |import monkey_patch\n                |from hermes_cli.main import main\n                |main()\n                |\" \"$@\"\n            ", (String) null, 1, (Object) null), (Charset) null, 2, (Object) null);
        file5.setExecutable(true, false);
        File file6 = new File(file4, "hermes-agent");
        FilesKt.writeText$default(file6, StringsKt.trimMargin$default("\n                |#!" + absolutePath + "\n                |set -euo pipefail\n                |export TMPDIR=\"${TMPDIR:-$PREFIX/tmp}\"\n                |export HERMES_HOME=\"${HERMES_HOME:-$HOME/.hermes}\"\n                |PATCH_DIR=\"$HOME/.hermes-android/patches\"\n                |HERMES_SRC=\"$HOME/.hermes-android/hermes-agent\"\n                |export PYTHONPATH=\"${PATCH_DIR}:${HERMES_SRC}:${PYTHONPATH:-}\"\n                |exec python3 -c \"\n                |import monkey_patch\n                |from run_agent import main\n                |main()\n                |\" \"$@\"\n            ", (String) null, 1, (Object) null), (Charset) null, 2, (Object) null);
        file6.setExecutable(true, false);
    }

    private final Pair<Integer, String> installCoreDeps() {
        return (Pair) INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda31
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.installCoreDeps$lambda$56());
            }
        }, TuplesKt.to(-1, "package op skipped"), new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda32
            public final Object invoke() {
                return this.f$0.installCoreDepsLocked();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<Integer, String> installCoreDepsLocked() {
        Object obj;
        Pair<Integer, String> pairRunWithRetry$default = runWithRetry$default(this, "python3 -m pip install --prefer-binary " + CollectionsKt.joinToString$default(CollectionsKt.listOf(new String[]{"openai>=2.21.0,<3", "anthropic>=0.39.0,<1", "python-dotenv>=1.2.1,<2", "fire>=0.7.1,<1", "httpx[socks]>=0.28.1,<1", "rich>=14.3.3,<15", "tenacity>=9.1.4,<10", "pyyaml>=6.0.3,<7", "requests>=2.33.0,<3", "jinja2>=3.1.6,<4", "prompt_toolkit>=3.0.52,<4", "PyJWT>=2.12.1,<3", "annotated-types>=0.6.0", "typing-extensions>=4.14.1", "typing-inspection>=0.4.2", "mcp>=1.2.0,<2", "honcho-ai>=2.0.1,<3", "croniter>=6.0.0,<7", "ptyprocess>=0.7.0,<1", "pathspec>=1.1.1,<2", "certifi==2026.5.20", "packaging==26.0", "urllib3>=2.7.0,<3", "fastapi>=0.100,<1", "uvicorn>=0.24,<1", "python-multipart>=0.0.9,<1", "websockets==15.0.1"}), " ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda30
            public final Object invoke(Object obj2) {
                return BootstrapManager.installCoreDepsLocked$lambda$58((String) obj2);
            }
        }, 30, (Object) null) + " 2>&1", 3, null, null, 300000L, true, 12, null);
        Pair<Integer, String> pairRunInTermux = runInTermux("python3 -m pip install --no-deps --prefer-binary 'ruamel.yaml>=0.18.17,<0.19' 2>&1", 300000L, true);
        if (((Number) pairRunInTermux.getFirst()).intValue() != 0) {
            Log.w(TAG, "ruamel.yaml install failed (non-fatal): " + StringsKt.takeLast((String) pairRunInTermux.getSecond(), 300));
        }
        if (((Number) pairRunWithRetry$default.getFirst()).intValue() == 0) {
            try {
                Result.Companion companion = Result.Companion;
                BootstrapManager bootstrapManager = this;
                FilesKt.writeText$default(getCoreDepsMarker(), "2", (Charset) null, 2, (Object) null);
                obj = Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th));
            }
            Throwable th2 = Result.exceptionOrNull-impl(obj);
            if (th2 != null) {
                Log.w(TAG, "core-deps marker write failed: " + th2.getMessage());
            }
        }
        return pairRunWithRetry$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence installCoreDepsLocked$lambda$58(String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        return "'" + str + "'";
    }

    private final File getCoreDepsMarker() {
        return new File(this.homeDir, ".hermes-android/core-deps-rev");
    }

    public final boolean coreDepsMigrationPending() {
        Object obj;
        String text$default;
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            File coreDepsMarker = getCoreDepsMarker();
            if (!coreDepsMarker.exists()) {
                coreDepsMarker = null;
            }
            obj = Result.constructor-impl((coreDepsMarker == null || (text$default = FilesKt.readText$default(coreDepsMarker, (Charset) null, 1, (Object) null)) == null) ? null : StringsKt.trim(text$default).toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return true ^ Intrinsics.areEqual((String) (Result.isFailure-impl(obj) ? null : obj), "2");
    }

    private final File getRuntimePatchesMarker() {
        return new File(this.homeDir, ".hermes-android/patches-rev");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean runtimePatchesRefreshPending() {
        Object obj;
        String text$default;
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            File runtimePatchesMarker = getRuntimePatchesMarker();
            if (!runtimePatchesMarker.exists()) {
                runtimePatchesMarker = null;
            }
            obj = Result.constructor-impl((runtimePatchesMarker == null || (text$default = FilesKt.readText$default(runtimePatchesMarker, (Charset) null, 1, (Object) null)) == null) ? null : StringsKt.trim(text$default).toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return true ^ Intrinsics.areEqual((String) (Result.isFailure-impl(obj) ? null : obj), "2");
    }

    public final void ensureRuntimePatchesCurrent() {
        try {
            if (runtimePatchesRefreshPending()) {
                INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda23
                    public final Object invoke() {
                        return Boolean.valueOf(this.f$0.runtimePatchesRefreshPending());
                    }
                }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda24
                    public final Object invoke() {
                        return BootstrapManager.ensureRuntimePatchesCurrent$lambda$68(this.f$0);
                    }
                });
            }
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "ensureRuntimePatchesCurrent: package subsystem poisoned; deferred until device restart (" + e.getMessage() + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object ensureRuntimePatchesCurrent$lambda$68(BootstrapManager bootstrapManager) {
        int iW;
        Object obj;
        Log.i(TAG, "Runtime patches outdated (→ rev 2), refreshing from assets…");
        try {
            bootstrapManager.installPatches();
            try {
                Result.Companion companion = Result.Companion;
                FilesKt.writeText$default(bootstrapManager.getRuntimePatchesMarker(), "2", (Charset) null, 2, (Object) null);
                obj = Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th));
            }
            Throwable th2 = Result.exceptionOrNull-impl(obj);
            if (th2 != null) {
                Log.w(TAG, "patches marker write failed: " + th2.getMessage());
            }
            iW = Log.i(TAG, "Runtime patches refreshed to rev 2");
        } catch (Exception e) {
            iW = Log.w(TAG, "runtime patches refresh failed (retry next launch): " + e.getMessage());
        }
        return Integer.valueOf(iW);
    }

    private final File getOpenSslMarker() {
        return new File(this.homeDir, ".hermes-android/openssl-rev");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean openSslRefreshPending() {
        Object obj;
        String text$default;
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            File openSslMarker = getOpenSslMarker();
            if (!openSslMarker.exists()) {
                openSslMarker = null;
            }
            obj = Result.constructor-impl((openSslMarker == null || (text$default = FilesKt.readText$default(openSslMarker, (Charset) null, 1, (Object) null)) == null) ? null : StringsKt.trim(text$default).toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return true ^ Intrinsics.areEqual((String) (Result.isFailure-impl(obj) ? null : obj), OPENSSL_BUNDLE_REVISION);
    }

    public final void ensureOpenSslCurrent() {
        try {
            if (openSslRefreshPending()) {
                INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda1
                    public final Object invoke() {
                        return Boolean.valueOf(this.f$0.openSslRefreshPending());
                    }
                }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda2
                    public final Object invoke() {
                        return BootstrapManager.ensureOpenSslCurrent$lambda$72(this.f$0);
                    }
                });
            }
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "ensureOpenSslCurrent: package subsystem poisoned; deferred until device restart (" + e.getMessage() + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ensureOpenSslCurrent$lambda$72(BootstrapManager bootstrapManager) {
        Log.i(TAG, "OpenSSL bundle revision outdated (→ 3.6.3), refreshing from assets…");
        bootstrapManager.refreshOpenSslFromAssetsLocked();
        return Unit.INSTANCE;
    }

    private final void refreshOpenSslFromAssetsLocked() {
        Object obj;
        String str = "bootstrap-" + INSTANCE.detectTermuxArch() + ".zip";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            try {
                FileOutputStream fileOutputStreamOpen = this.context.getAssets().open(str);
                try {
                    fileOutputStreamOpen = new ZipInputStream(new BufferedInputStream(fileOutputStreamOpen));
                    try {
                        ZipInputStream zipInputStream = fileOutputStreamOpen;
                        for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                            if (OPENSSL_LIB_ENTRIES.contains(nextEntry.getName())) {
                                File file = new File(this.prefixDir, nextEntry.getName());
                                File parentFile = file.getParentFile();
                                if (parentFile != null) {
                                    parentFile.mkdirs();
                                }
                                File file2 = new File(file.getParentFile(), file.getName() + ".osslnew");
                                fileOutputStreamOpen = new FileOutputStream(file2);
                                try {
                                    ByteStreamsKt.copyTo$default(zipInputStream, fileOutputStreamOpen, 0, 2, (Object) null);
                                    CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                                    file2.setReadable(true, true);
                                    file2.setWritable(true, true);
                                    file2.setExecutable(true, true);
                                    linkedHashMap.put(nextEntry.getName(), file2);
                                } finally {
                                }
                            }
                            zipInputStream.closeEntry();
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                        int size = linkedHashMap.size();
                        List<String> list = OPENSSL_LIB_ENTRIES;
                        if (size != list.size()) {
                            Log.w(TAG, "openssl refresh aborted: only " + linkedHashMap.size() + "/" + list.size() + " entries found in " + str);
                            for (File file3 : linkedHashMap.values()) {
                                try {
                                    Result.Companion companion = Result.Companion;
                                    BootstrapManager bootstrapManager = this;
                                    if (file3.exists()) {
                                        file3.delete();
                                    }
                                    Result.constructor-impl(Unit.INSTANCE);
                                } catch (Throwable th) {
                                    Result.Companion companion2 = Result.Companion;
                                    Result.constructor-impl(ResultKt.createFailure(th));
                                }
                            }
                            return;
                        }
                        for (String str2 : list) {
                            if (!((File) MapsKt.getValue(linkedHashMap, str2)).renameTo(new File(this.prefixDir, str2))) {
                                Log.w(TAG, "openssl refresh: rename failed for " + str2 + " (retry next launch)");
                                for (File file4 : linkedHashMap.values()) {
                                    try {
                                        Result.Companion companion3 = Result.Companion;
                                        BootstrapManager bootstrapManager2 = this;
                                        if (file4.exists()) {
                                            file4.delete();
                                        }
                                        Result.constructor-impl(Unit.INSTANCE);
                                    } catch (Throwable th2) {
                                        Result.Companion companion4 = Result.Companion;
                                        Result.constructor-impl(ResultKt.createFailure(th2));
                                    }
                                }
                                return;
                            }
                        }
                        try {
                            Result.Companion companion5 = Result.Companion;
                            BootstrapManager bootstrapManager3 = this;
                            FilesKt.writeText$default(getOpenSslMarker(), OPENSSL_BUNDLE_REVISION, (Charset) null, 2, (Object) null);
                            obj = Result.constructor-impl(Unit.INSTANCE);
                        } catch (Throwable th3) {
                            Result.Companion companion6 = Result.Companion;
                            obj = Result.constructor-impl(ResultKt.createFailure(th3));
                        }
                        Throwable th4 = Result.exceptionOrNull-impl(obj);
                        if (th4 != null) {
                            Log.w(TAG, "openssl marker write failed: " + th4.getMessage());
                        }
                        Log.i(TAG, "OpenSSL libs refreshed to 3.6.3");
                        for (File file5 : linkedHashMap.values()) {
                            try {
                                Result.Companion companion7 = Result.Companion;
                                BootstrapManager bootstrapManager4 = this;
                                if (file5.exists()) {
                                    file5.delete();
                                }
                                Result.constructor-impl(Unit.INSTANCE);
                            } catch (Throwable th5) {
                                Result.Companion companion8 = Result.Companion;
                                Result.constructor-impl(ResultKt.createFailure(th5));
                            }
                        }
                    } finally {
                    }
                } catch (Throwable th6) {
                    try {
                        throw th6;
                    } finally {
                    }
                }
            } catch (Exception e) {
                Log.w(TAG, "openssl refresh failed (retry next launch): " + e.getMessage());
                for (File file6 : linkedHashMap.values()) {
                    try {
                        Result.Companion companion9 = Result.Companion;
                        if (file6.exists()) {
                            file6.delete();
                        }
                        Result.constructor-impl(Unit.INSTANCE);
                    } catch (Throwable th7) {
                        Result.Companion companion10 = Result.Companion;
                        Result.constructor-impl(ResultKt.createFailure(th7));
                    }
                }
            }
        } catch (Throwable th8) {
            for (File file7 : linkedHashMap.values()) {
                try {
                    Result.Companion companion11 = Result.Companion;
                    if (file7.exists()) {
                        file7.delete();
                    }
                    Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th9) {
                    Result.Companion companion12 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th9));
                }
            }
            throw th8;
        }
    }

    public final void ensureCoreDepsCurrent() throws InterruptedException {
        try {
            if (coreDepsMigrationPending()) {
                if (!hasNetwork()) {
                    Log.i(TAG, "Core deps migration deferred: offline (retry next launch)");
                    return;
                }
                Companion companion = INSTANCE;
                if (!companion.beginCoreDepsMigration()) {
                    Log.i(TAG, "Core deps migration in flight (another generation); waiting for it to finish before READY");
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    while (INSTANCE.isCoreDepsMigrationInFlight()) {
                        if (SystemClock.elapsedRealtime() - jElapsedRealtime > CORE_DEPS_LOSER_WAIT_CAP_MS) {
                            Log.w(TAG, "in-flight core-deps migration exceeded wait cap; proceeding (session-open stays lock-gated)");
                            return;
                        }
                        Thread.sleep(200L);
                    }
                    return;
                }
                try {
                    companion.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda11
                        public final Object invoke() {
                            return Boolean.valueOf(this.f$0.coreDepsMigrationPending());
                        }
                    }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda22
                        public final Object invoke() {
                            return BootstrapManager.ensureCoreDepsCurrent$lambda$81(this.f$0);
                        }
                    });
                    companion.endCoreDepsMigration();
                } catch (Throwable th) {
                    INSTANCE.endCoreDepsMigration();
                    throw th;
                }
            }
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "ensureCoreDepsCurrent: package subsystem poisoned; deferred until device restart (" + e.getMessage() + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ensureCoreDepsCurrent$lambda$81(BootstrapManager bootstrapManager) {
        Log.i(TAG, "Core deps revision outdated (→ 2), migrating…");
        Pair<Integer, String> pairInstallCoreDepsLocked = bootstrapManager.installCoreDepsLocked();
        if (((Number) pairInstallCoreDepsLocked.getFirst()).intValue() != 0) {
            Log.w(TAG, "Core deps migration failed (retry next launch/generation): " + StringsKt.takeLast((String) pairInstallCoreDepsLocked.getSecond(), 300));
        }
        return Unit.INSTANCE;
    }

    static /* synthetic */ void installHermesAgent$default(BootstrapManager bootstrapManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        bootstrapManager.installHermesAgent(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void installHermesAgent(final boolean forceWheels) {
        INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda9
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.installHermesAgent$lambda$82());
            }
        }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda10
            public final Object invoke() {
                return BootstrapManager.installHermesAgent$lambda$83(this.f$0, forceWheels);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit installHermesAgent$lambda$83(BootstrapManager bootstrapManager, boolean z) throws IOException {
        bootstrapManager.installHermesAgentLocked(z);
        return Unit.INSTANCE;
    }

    private final void installHermesAgentLocked(boolean forceWheels) throws IOException {
        Charset charset;
        File file = new File(this.homeDir, ".hermes-android/hermes-agent");
        boolean z = file.exists() && !new File(file, "hermes_cli/web_server.py").exists();
        if (z) {
            appendLog$default(this, "Upgrading hermes-agent to web UI version...", false, 0L, 6, null);
        }
        if (!file.exists() || z) {
            try {
                this.context.getAssets().open("hermes-agent-source.zip").close();
                appendLog$default(this, "Extracting hermes-agent from bundled asset...", false, 0L, 6, null);
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileOutputStream fileOutputStreamOpen = this.context.getAssets().open("hermes-agent-source.zip");
                try {
                    fileOutputStreamOpen = new ZipInputStream(new BufferedInputStream(fileOutputStreamOpen));
                    try {
                        ZipInputStream zipInputStream = fileOutputStreamOpen;
                        for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                            String name = nextEntry.getName();
                            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                            String strRemovePrefix = StringsKt.removePrefix(name, "hermes-agent/");
                            if (strRemovePrefix.length() > 0 && !StringsKt.startsWith$default(strRemovePrefix, "web/", false, 2, (Object) null)) {
                                File file2 = new File(file, strRemovePrefix);
                                if (nextEntry.isDirectory()) {
                                    file2.mkdirs();
                                } else {
                                    File parentFile2 = file2.getParentFile();
                                    if (parentFile2 != null) {
                                        parentFile2.mkdirs();
                                    }
                                    fileOutputStreamOpen = new FileOutputStream(file2);
                                    try {
                                        Long.valueOf(ByteStreamsKt.copyTo$default(zipInputStream, fileOutputStreamOpen, 0, 2, (Object) null));
                                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                                    } finally {
                                    }
                                }
                            }
                            zipInputStream.closeEntry();
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                        if (!file.exists()) {
                            throw new RuntimeException("hermes-agent bundle extraction failed");
                        }
                        appendLog$default(this, "hermes-agent extracted from bundle.", false, 0L, 6, null);
                    } finally {
                    }
                } finally {
                }
            } catch (Exception unused) {
                Pair<String, UpdateError> pairResolveLatestReleaseTag = resolveLatestReleaseTag();
                String str = (String) pairResolveLatestReleaseTag.component1();
                UpdateError updateError = (UpdateError) pairResolveLatestReleaseTag.component2();
                if (str == null) {
                    Log.e(TAG, "install fallback: resolve latest release failed: " + updateError);
                    throw new RuntimeException("Failed to resolve latest hermes-agent release (network error). Please check your connection and try repair from Settings.");
                }
                String str2 = "https://github.com/NousResearch/hermes-agent/archive/refs/tags/" + str + ".zip";
                File file3 = new File(this.tmpDir, "hermes-agent.zip");
                appendLog$default(this, "Downloading hermes-agent from GitHub...", false, 0L, 6, null);
                if (((Number) runWithRetry$default(this, "python3 -c \"\nimport urllib.request, sys, os\nurl='" + str2 + "'\nout='" + file3.getAbsolutePath() + "'\nprint('Downloading', url)\nurllib.request.urlretrieve(url, out)\nprint('Downloaded', os.path.getsize(out), 'bytes')\n\" 2>&1", 3, null, "rm -f " + file3.getAbsolutePath() + " 2>&1 || true", 0L, false, 52, null).getFirst()).intValue() != 0) {
                    Log.e(TAG, "Failed to download hermes-agent zip");
                    throw new RuntimeException("Failed to download hermes-agent (network error). Please check your connection and try repair from Settings.");
                }
                appendLog$default(this, "Extracting hermes-agent...", false, 0L, 6, null);
                File file4 = new File(this.tmpDir, "hermes-agent-extract");
                Pair pairRunInTermux$default = runInTermux$default(this, "rm -rf " + file4.getAbsolutePath() + " && mkdir -p " + file4.getAbsolutePath() + " && cd " + file4.getAbsolutePath() + " && python3 -c \"import zipfile; zipfile.ZipFile('" + file3.getAbsolutePath() + "').extractall('.')\" && mv hermes-agent-* " + file.getAbsolutePath() + " && rm -f " + file3.getAbsolutePath() + " && echo 'Extract OK' 2>&1", 0L, false, 6, null);
                if (((Number) pairRunInTermux$default.getFirst()).intValue() != 0 || !file.exists()) {
                    Log.e(TAG, "Failed to extract hermes-agent: " + StringsKt.take((String) pairRunInTermux$default.getSecond(), MIN_SPACE_MB));
                    throw new RuntimeException("Failed to extract hermes-agent zip.");
                }
            }
        }
        WheelInstaller wheelInstaller = new WheelInstaller(this.context, this.homeDir, new Function1() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda21
            public final Object invoke(Object obj) {
                return BootstrapManager.installHermesAgentLocked$lambda$87(this.f$0, (String) obj);
            }
        });
        List<String> listListBundled = wheelInstaller.listBundled();
        Log.d(TAG, "Bundled wheels for current arch: " + listListBundled);
        if (listListBundled.isEmpty()) {
            String[] strArr = Build.SUPPORTED_ABIS;
            Intrinsics.checkNotNullExpressionValue(strArr, "SUPPORTED_ABIS");
            throw new RuntimeException("No bundled wheels found for ABI " + ArraysKt.joinToString$default(strArr, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null) + ". This APK is missing required assets/wheels/<arch>/*.whl — rebuild with wheels.");
        }
        List<String> listListOf = CollectionsKt.listOf(new String[]{"pydantic-core", "jiter", "cryptography", "pydantic"});
        if (!wheelInstaller.installFromLocal(listListOf, forceWheels)) {
            throw new RuntimeException("Failed to install bundled native wheels (" + listListOf + "). See logcat for pip errors.");
        }
        patchPydanticVersionCheck();
        runInTermux$default(this, "cd " + file.getAbsolutePath() + " && sed -i 's/PyJWT\\[crypto\\]/PyJWT/g' pyproject.toml && sed -i 's/uvicorn\\[standard\\]/uvicorn/g' pyproject.toml && sed -i '/^[[:space:]]*\"Pillow==/d' pyproject.toml 2>&1", 0L, false, 6, null);
        runInTermux$default(this, "python3 -m pip install --quiet setuptools wheel 2>&1", 0L, true, 2, null);
        if (((Number) runInTermux$default(this, "python3 -c 'import rpds' 2>/dev/null", 0L, false, 6, null).getFirst()).intValue() != 0) {
            appendLog$default(this, "[pip] Attempting rpds-py binary install...", false, 0L, 6, null);
            if (((Number) runInTermux$default(this, "python3 -m pip install --prefer-binary --only-binary rpds-py 'rpds-py' 2>&1", 0L, true, 2, null).getFirst()).intValue() != 0) {
                appendLog$default(this, "[pip] rpds-py binary not available, creating stub + metadata...", false, 0L, 6, null);
                File file5 = new File(this.homeDir, ".rpds_stub.py");
                charset = null;
                FilesKt.writeText$default(file5, "import site, os\nsp = site.getsitepackages()[0]\nd = os.path.join(sp, 'rpds')\nos.makedirs(d, exist_ok=True)\nopen(os.path.join(d, '__init__.py'), 'w').write(\n    '# stub for rpds-py (no Rust on Android)\\n'\n    'class HashTrieMap(dict): pass\\n'\n    'class HashTrieSet(set): pass\\n'\n    'class List(list): pass\\n'\n)\nv = '0.30.0'\ndi = os.path.join(sp, 'rpds_py-' + v + '.dist-info')\nos.makedirs(di, exist_ok=True)\nopen(os.path.join(di, 'METADATA'), 'w').write(\n    'Metadata-Version: 2.1\\nName: rpds-py\\nVersion: ' + v + '\\n'\n)\nopen(os.path.join(di, 'WHEEL'), 'w').write(\n    'Wheel-Version: 1.0\\nGenerator: hermes-android-stub\\n'\n    'Root-Is-Purelib: true\\nTag: py3-none-any\\n'\n)\nopen(os.path.join(di, 'RECORD'), 'w').write('')\nopen(os.path.join(di, 'INSTALLER'), 'w').write('hermes-android-stub\\n')\nopen(os.path.join(di, 'top_level.txt'), 'w').write('rpds\\n')", (Charset) null, 2, (Object) null);
                runInTermux$default(this, "python3 " + file5.getAbsolutePath() + " 2>&1", 0L, true, 2, null);
                file5.delete();
                appendLog$default(this, "[pip] rpds stub + fake dist-info created.", false, 0L, 6, null);
            } else {
                charset = null;
                appendLog$default(this, "[pip] rpds-py binary installed.", false, 0L, 6, null);
            }
        } else {
            charset = null;
        }
        if (((Number) runInTermux$default(this, "python3 -c 'import cryptography' 2>/dev/null", 0L, false, 6, null).getFirst()).intValue() != 0) {
            appendLog$default(this, "[pip] Creating cryptography stub + dist-info...", false, 0L, 6, null);
            File file6 = new File(this.homeDir, ".crypto_stub.py");
            FilesKt.writeText$default(file6, "import site, os\nsp = site.getsitepackages()[0]\nd = os.path.join(sp, 'cryptography')\nos.makedirs(d, exist_ok=True)\nopen(os.path.join(d, '__init__.py'), 'w').write(\n    '# stub for cryptography (no Rust/C toolchain on Android)\\n'\n    '__version__ = \"48.0.0\"\\n'\n)\nv = '48.0.0'\ndi = os.path.join(sp, 'cryptography-' + v + '.dist-info')\nos.makedirs(di, exist_ok=True)\nopen(os.path.join(di, 'METADATA'), 'w').write(\n    'Metadata-Version: 2.1\\nName: cryptography\\nVersion: ' + v + '\\n'\n)\nopen(os.path.join(di, 'WHEEL'), 'w').write(\n    'Wheel-Version: 1.0\\nGenerator: hermes-android-stub\\n'\n    'Root-Is-Purelib: true\\nTag: py3-none-any\\n'\n)\nopen(os.path.join(di, 'RECORD'), 'w').write('')\nopen(os.path.join(di, 'INSTALLER'), 'w').write('hermes-android-stub\\n')\nopen(os.path.join(di, 'top_level.txt'), 'w').write('cryptography\\n')", charset, 2, charset);
            runInTermux$default(this, "python3 " + file6.getAbsolutePath() + " 2>&1", 0L, true, 2, null);
            file6.delete();
            appendLog$default(this, "[pip] cryptography stub + dist-info created.", false, 0L, 6, null);
        }
        if (((Number) runInTermux$default(this, "python3 -c 'import PIL' 2>/dev/null", 0L, false, 6, null).getFirst()).intValue() != 0) {
            appendLog$default(this, "[pip] Creating Pillow (PIL) stub + dist-info...", false, 0L, 6, null);
            File file7 = new File(this.homeDir, ".pil_stub.py");
            FilesKt.writeText$default(file7, "import site, os\nsp = site.getsitepackages()[0]\nd = os.path.join(sp, 'PIL')\nos.makedirs(d, exist_ok=True)\nopen(os.path.join(d, '__init__.py'), 'w').write(\n    '# stub for Pillow (no C toolchain on Android)\\n'\n    '__version__ = \"12.2.0\"\\n'\n)\nv = '12.2.0'\ndi = os.path.join(sp, 'Pillow-' + v + '.dist-info')\nos.makedirs(di, exist_ok=True)\nopen(os.path.join(di, 'METADATA'), 'w').write(\n    'Metadata-Version: 2.1\\nName: Pillow\\nVersion: ' + v + '\\n'\n)\nopen(os.path.join(di, 'WHEEL'), 'w').write(\n    'Wheel-Version: 1.0\\nGenerator: hermes-android-stub\\n'\n    'Root-Is-Purelib: true\\nTag: py3-none-any\\n'\n)\nopen(os.path.join(di, 'RECORD'), 'w').write('')\nopen(os.path.join(di, 'INSTALLER'), 'w').write('hermes-android-stub\\n')\nopen(os.path.join(di, 'top_level.txt'), 'w').write('PIL\\n')", charset, 2, charset);
            runInTermux$default(this, "python3 " + file7.getAbsolutePath() + " 2>&1", 0L, true, 2, null);
            file7.delete();
            appendLog$default(this, "[pip] Pillow (PIL) stub + dist-info created.", false, 0L, 6, null);
        }
        Pair<Integer, String> pairInstallCoreDeps = installCoreDeps();
        if (((Number) pairInstallCoreDeps.getFirst()).intValue() != 0) {
            throw new RuntimeException("Failed to install hermes-agent core deps (exit " + pairInstallCoreDeps.getFirst() + ") after 3 attempts. Check network and try repair from Settings.");
        }
        Pair pairRunInTermuxPkg$default = runInTermuxPkg$default(this, "cd " + file.getAbsolutePath() + " && python3 -m pip install --no-deps --no-build-isolation -e . 2>&1", 0L, 2, null);
        if (((Number) pairRunInTermuxPkg$default.getFirst()).intValue() != 0) {
            throw new RuntimeException("hermes-agent editable install failed (exit " + pairRunInTermuxPkg$default.getFirst() + "). See logcat for details.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair installHermesAgentLocked$lambda$87(BootstrapManager bootstrapManager, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        return runInTermux$default(bootstrapManager, str, 0L, true, 2, null);
    }

    public final void invalidateEdgeCache() {
        this.edgeInstalledCache = null;
    }

    public final boolean isEdgeInstalled() {
        if (!isInstalled()) {
            return false;
        }
        Boolean bool = this.edgeInstalledCache;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = ((Number) runInTermux$default(this, "python3 -c 'import aiohttp' 2>/dev/null || python3 -c 'import edge_tts' 2>/dev/null || python3 -c 'import exa_py' 2>/dev/null || python3 -c 'import fal_client' 2>/dev/null", WorkRequest.MIN_BACKOFF_MILLIS, false, 4, null).component1()).intValue() == 0;
        this.edgeInstalledCache = Boolean.valueOf(z);
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean installEdgeFeatures$default(BootstrapManager bootstrapManager, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return bootstrapManager.installEdgeFeatures(function1);
    }

    public final boolean installEdgeFeatures(Function1<? super String, Unit> onProgress) {
        try {
            return installEdgeFeaturesImpl(onProgress);
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "installEdgeFeatures: package subsystem poisoned; refused until device restart (" + e.getMessage() + ")");
            if (onProgress != null) {
                onProgress.invoke("Package subsystem disabled until device restart.");
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean installEdgeFeaturesImpl$default(BootstrapManager bootstrapManager, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return bootstrapManager.installEdgeFeaturesImpl(function1);
    }

    private final boolean installEdgeFeaturesImpl(Function1<? super String, Unit> onProgress) {
        int i = 2;
        List<String> listListOf = CollectionsKt.listOf(new String[]{"msgpack", "multidict", "yarl", "frozenlist", "propcache", "aiohttp", "websockets"});
        if (onProgress != null) {
            onProgress.invoke("Preparing native dependencies...");
        }
        for (String str : listListOf) {
            if (((Number) runInTermux$default(this, "python3 -c 'import " + str + "' 2>/dev/null", 0L, false, 6, null).getFirst()).intValue() != 0) {
                if (onProgress != null) {
                    onProgress.invoke("Installing " + str + "...");
                }
                Pair pairRunInTermuxPkg$default = runInTermuxPkg$default(this, "export AIOHTTP_NO_EXTENSIONS=1 MULTIDICT_NO_EXTENSIONS=1 YARL_NO_EXTENSIONS=1 FROZENLIST_NO_EXTENSIONS=1 PROPCACHE_NO_EXTENSIONS=1 MSGPACK_PUREPYTHON=1; python3 -m pip install --no-build-isolation '" + str + "' 2>&1", 0L, 2, null);
                int iIntValue = ((Number) pairRunInTermuxPkg$default.component1()).intValue();
                String str2 = (String) pairRunInTermuxPkg$default.component2();
                if (iIntValue != 0) {
                    Log.w(TAG, "Pre-install " + str + " failed (rc=" + iIntValue + "): " + StringsKt.takeLast(str2, MIN_SPACE_MB));
                }
            }
        }
        List<String> listListOf2 = CollectionsKt.listOf(new String[]{"exa-py==2.10.2", "firecrawl-py==4.17.0", "parallel-web==0.4.2", "fal-client==0.13.1", "edge-tts==7.2.7"});
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str3 : listListOf2) {
            String strSubstringBefore$default = StringsKt.substringBefore$default(StringsKt.substringBefore$default(StringsKt.substringBefore$default(str3, ">=", (String) null, i, (Object) null), ">", (String) null, i, (Object) null), "=", (String) null, i, (Object) null);
            if (onProgress != null) {
                onProgress.invoke("Installing " + strSubstringBefore$default + "...");
            }
            Pair pairRunInTermuxPkg$default2 = runInTermuxPkg$default(this, "export AIOHTTP_NO_EXTENSIONS=1 MULTIDICT_NO_EXTENSIONS=1 YARL_NO_EXTENSIONS=1 FROZENLIST_NO_EXTENSIONS=1 PROPCACHE_NO_EXTENSIONS=1 MSGPACK_PUREPYTHON=1; python3 -m pip install --prefer-binary --no-build-isolation '" + str3 + "' 2>&1", 0L, 2, null);
            int iIntValue2 = ((Number) pairRunInTermuxPkg$default2.component1()).intValue();
            String str4 = (String) pairRunInTermuxPkg$default2.component2();
            if (iIntValue2 != 0) {
                Log.w(TAG, "Edge dep " + str3 + " failed (rc=" + iIntValue2 + "): " + StringsKt.takeLast(str4, 800));
                arrayList2.add(strSubstringBefore$default);
            } else {
                arrayList.add(strSubstringBefore$default);
            }
            i = 2;
        }
        ArrayList arrayList3 = arrayList2;
        if (!arrayList3.isEmpty() && arrayList.isEmpty()) {
            Log.w(TAG, "Edge features: ALL deps failed: " + arrayList2);
            if (onProgress == null) {
                return false;
            }
            onProgress.invoke("All installs failed: " + CollectionsKt.joinToString$default(arrayList2, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
            return false;
        }
        if (!arrayList3.isEmpty()) {
            Log.w(TAG, "Edge features: partial success. Failed: " + arrayList2 + ", OK: " + arrayList);
            if (onProgress != null) {
                onProgress.invoke("Done! (" + CollectionsKt.joinToString$default(arrayList2, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null) + " unavailable)");
            }
        } else if (onProgress != null) {
            onProgress.invoke("Done!");
        }
        patchPydanticVersionCheck();
        invalidateEdgeCache();
        Log.d(TAG, "Edge features installed (success=" + arrayList.size() + ", failed=" + arrayList2.size() + ")");
        return true;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/hermes/android/BootstrapManager$UpdateError;", "", "<init>", "(Ljava/lang/String;I)V", "NONE", "DNS", "TIMEOUT", "SSL", "HTTP", "UNKNOWN", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class UpdateError {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpdateError[] $VALUES;
        public static final UpdateError NONE = new UpdateError("NONE", 0);
        public static final UpdateError DNS = new UpdateError("DNS", 1);
        public static final UpdateError TIMEOUT = new UpdateError("TIMEOUT", 2);
        public static final UpdateError SSL = new UpdateError("SSL", 3);
        public static final UpdateError HTTP = new UpdateError("HTTP", 4);
        public static final UpdateError UNKNOWN = new UpdateError("UNKNOWN", 5);

        private static final /* synthetic */ UpdateError[] $values() {
            return new UpdateError[]{NONE, DNS, TIMEOUT, SSL, HTTP, UNKNOWN};
        }

        public static EnumEntries<UpdateError> getEntries() {
            return $ENTRIES;
        }

        private UpdateError(String str, int i) {
        }

        static {
            UpdateError[] updateErrorArr$values = $values();
            $VALUES = updateErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(updateErrorArr$values);
        }

        public static UpdateError valueOf(String str) {
            return (UpdateError) Enum.valueOf(UpdateError.class, str);
        }

        public static UpdateError[] values() {
            return (UpdateError[]) $VALUES.clone();
        }
    }

    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J;\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/hermes/android/BootstrapManager$UpdateInfo;", "", "localVersion", "", "remoteVersion", "hasUpdate", "", "fetchOk", "error", "Lcom/hermes/android/BootstrapManager$UpdateError;", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)V", "getLocalVersion", "()Ljava/lang/String;", "getRemoteVersion", "getHasUpdate", "()Z", "getFetchOk", "getError", "()Lcom/hermes/android/BootstrapManager$UpdateError;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class UpdateInfo {
        public static final int $stable = 0;
        private final UpdateError error;
        private final boolean fetchOk;
        private final boolean hasUpdate;
        private final String localVersion;
        private final String remoteVersion;

        public static /* synthetic */ UpdateInfo copy$default(UpdateInfo updateInfo, String str, String str2, boolean z, boolean z2, UpdateError updateError, int i, Object obj) {
            if ((i & 1) != 0) {
                str = updateInfo.localVersion;
            }
            if ((i & 2) != 0) {
                str2 = updateInfo.remoteVersion;
            }
            String str3 = str2;
            if ((i & 4) != 0) {
                z = updateInfo.hasUpdate;
            }
            boolean z3 = z;
            if ((i & 8) != 0) {
                z2 = updateInfo.fetchOk;
            }
            boolean z4 = z2;
            if ((i & 16) != 0) {
                updateError = updateInfo.error;
            }
            return updateInfo.copy(str, str3, z3, z4, updateError);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLocalVersion() {
            return this.localVersion;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRemoteVersion() {
            return this.remoteVersion;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getHasUpdate() {
            return this.hasUpdate;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getFetchOk() {
            return this.fetchOk;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final UpdateError getError() {
            return this.error;
        }

        public final UpdateInfo copy(String localVersion, String remoteVersion, boolean hasUpdate, boolean fetchOk, UpdateError error) {
            Intrinsics.checkNotNullParameter(localVersion, "localVersion");
            Intrinsics.checkNotNullParameter(remoteVersion, "remoteVersion");
            Intrinsics.checkNotNullParameter(error, "error");
            return new UpdateInfo(localVersion, remoteVersion, hasUpdate, fetchOk, error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UpdateInfo)) {
                return false;
            }
            UpdateInfo updateInfo = (UpdateInfo) other;
            return Intrinsics.areEqual(this.localVersion, updateInfo.localVersion) && Intrinsics.areEqual(this.remoteVersion, updateInfo.remoteVersion) && this.hasUpdate == updateInfo.hasUpdate && this.fetchOk == updateInfo.fetchOk && this.error == updateInfo.error;
        }

        public int hashCode() {
            return (((((((this.localVersion.hashCode() * 31) + this.remoteVersion.hashCode()) * 31) + Boolean.hashCode(this.hasUpdate)) * 31) + Boolean.hashCode(this.fetchOk)) * 31) + this.error.hashCode();
        }

        public String toString() {
            return "UpdateInfo(localVersion=" + this.localVersion + ", remoteVersion=" + this.remoteVersion + ", hasUpdate=" + this.hasUpdate + ", fetchOk=" + this.fetchOk + ", error=" + this.error + ")";
        }

        public UpdateInfo(String str, String str2, boolean z, boolean z2, UpdateError updateError) {
            Intrinsics.checkNotNullParameter(str, "localVersion");
            Intrinsics.checkNotNullParameter(str2, "remoteVersion");
            Intrinsics.checkNotNullParameter(updateError, "error");
            this.localVersion = str;
            this.remoteVersion = str2;
            this.hasUpdate = z;
            this.fetchOk = z2;
            this.error = updateError;
        }

        public final String getLocalVersion() {
            return this.localVersion;
        }

        public final String getRemoteVersion() {
            return this.remoteVersion;
        }

        public final boolean getHasUpdate() {
            return this.hasUpdate;
        }

        public final boolean getFetchOk() {
            return this.fetchOk;
        }

        public /* synthetic */ UpdateInfo(String str, String str2, boolean z, boolean z2, UpdateError updateError, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? UpdateError.NONE : updateError);
        }

        public final UpdateError getError() {
            return this.error;
        }
    }

    public final String getInstalledVersion() {
        Object next;
        String strSubstringAfter$default;
        File file = new File(this.homeDir, ".hermes-android/hermes-agent/pyproject.toml");
        if (!file.exists()) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        try {
            Iterator it = FilesKt.readLines$default(file, (Charset) null, 1, (Object) null).iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (StringsKt.startsWith$default(StringsKt.trimStart((String) next).toString(), "version", false, 2, (Object) null)) {
                    break;
                }
            }
            String str = (String) next;
            if (str == null || (strSubstringAfter$default = StringsKt.substringAfter$default(str, '\"', (String) null, 2, (Object) null)) == null) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            String strSubstringBefore$default = StringsKt.substringBefore$default(strSubstringAfter$default, '\"', (String) null, 2, (Object) null);
            return strSubstringBefore$default == null ? EnvironmentCompat.MEDIA_UNKNOWN : strSubstringBefore$default;
        } catch (Exception unused) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        r0 = kotlin.text.StringsKt.lineSequence(kotlin.text.StringsKt.decodeToString(kotlin.io.ByteStreamsKt.readBytes(r3))).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
    
        if (r0.hasNext() == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
    
        r3 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0096, code lost:
    
        if (kotlin.text.StringsKt.startsWith$default(kotlin.text.StringsKt.trimStart((java.lang.String) r3).toString(), "version", false, 2, (java.lang.Object) null) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009a, code lost:
    
        r3 = (java.lang.String) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009e, code lost:
    
        r3 = kotlin.text.StringsKt.substringAfter$default(r3, '\"', (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a4, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
    
        r0 = kotlin.text.StringsKt.substringBefore$default(r3, '\"', (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00aa, code lost:
    
        if (r0 != null) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String getBundledVersion() {
        ZipInputStream zipInputStream;
        ZipEntry nextEntry;
        String str = EnvironmentCompat.MEDIA_UNKNOWN;
        String str2 = this.cachedBundledVersion;
        if (str2 != null) {
            return str2;
        }
        try {
            ZipInputStream zipInputStreamOpen = this.context.getAssets().open("hermes-agent-source.zip");
            try {
                zipInputStreamOpen = new ZipInputStream(new BufferedInputStream(zipInputStreamOpen));
                try {
                    zipInputStream = zipInputStreamOpen;
                    nextEntry = zipInputStream.getNextEntry();
                } finally {
                }
            } finally {
            }
            while (true) {
                if (nextEntry == null) {
                    break;
                }
                String name = nextEntry.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.endsWith$default(name, "pyproject.toml", false, 2, (Object) null)) {
                    String name2 = nextEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    String str3 = name2;
                    int i = 0;
                    for (int i2 = 0; i2 < str3.length(); i2++) {
                        if (str3.charAt(i2) == '/') {
                            i++;
                        }
                    }
                    if (i == 1) {
                        break;
                    }
                }
                zipInputStream.closeEntry();
                nextEntry = zipInputStream.getNextEntry();
            }
            String strSubstringBefore$default = EnvironmentCompat.MEDIA_UNKNOWN;
            CloseableKt.closeFinally(zipInputStreamOpen, (Throwable) null);
            CloseableKt.closeFinally(zipInputStreamOpen, (Throwable) null);
            str = strSubstringBefore$default;
        } catch (Exception e) {
            Log.w(TAG, "getBundledVersion failed", e);
        }
        this.cachedBundledVersion = str;
        return str;
    }

    public final boolean isVersionNewer(String a, String b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        if (!Intrinsics.areEqual(a, EnvironmentCompat.MEDIA_UNKNOWN) && !Intrinsics.areEqual(b, EnvironmentCompat.MEDIA_UNKNOWN)) {
            List<Integer> listIsVersionNewer$parts = isVersionNewer$parts(a);
            List<Integer> listIsVersionNewer$parts2 = isVersionNewer$parts(b);
            int iMax = Math.max(listIsVersionNewer$parts.size(), listIsVersionNewer$parts2.size());
            int i = 0;
            while (i < iMax) {
                int iIntValue = ((i < 0 || i >= listIsVersionNewer$parts.size()) ? 0 : listIsVersionNewer$parts.get(i)).intValue();
                int iIntValue2 = ((i < 0 || i >= listIsVersionNewer$parts2.size()) ? 0 : listIsVersionNewer$parts2.get(i)).intValue();
                if (iIntValue != iIntValue2) {
                    return iIntValue > iIntValue2;
                }
                i++;
            }
        }
        return false;
    }

    private static final List<Integer> isVersionNewer$parts(String str) {
        List listSplit$default = StringsKt.split$default(str, new char[]{'.'}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            Integer intOrNull = StringsKt.toIntOrNull((String) it.next());
            arrayList.add(Integer.valueOf(intOrNull != null ? intOrNull.intValue() : 0));
        }
        return arrayList;
    }

    public final void recoverInterruptedUpgrade() {
        Object obj;
        File file = new File(this.homeDir, ".hermes-android/hermes-agent.bak");
        if (file.exists()) {
            File file2 = new File(this.homeDir, ".hermes-android/hermes-agent");
            Log.w(TAG, "Found orphaned .bak — previous bundle upgrade was interrupted; restoring known-good copy");
            try {
                Result.Companion companion = Result.Companion;
                BootstrapManager bootstrapManager = this;
                obj = Result.constructor-impl(runInTermux$default(this, "rm -rf " + file2.getAbsolutePath() + " && mv " + file.getAbsolutePath() + " " + file2.getAbsolutePath() + " 2>&1", 0L, false, 6, null));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th));
            }
            Throwable th2 = Result.exceptionOrNull-impl(obj);
            if (th2 != null) {
                Log.e(TAG, "recoverInterruptedUpgrade failed", th2);
            }
        }
    }

    public final boolean needsBundleUpgrade() {
        if (isHermesInstalled()) {
            return isVersionNewer(getBundledVersion(), getInstalledVersion());
        }
        return false;
    }

    /* JADX INFO: renamed from: com.hermes.android.BootstrapManager$upgradeBundleFromApk$2, reason: invalid class name */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.BootstrapManager$upgradeBundleFromApk$2", f = "BootstrapManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ Function1<Progress, Unit> $onProgress;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super Progress, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$onProgress = function1;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> anonymousClass2 = BootstrapManager.this.new AnonymousClass2(this.$onProgress, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r9v7 ??, still in use, count: 1, list:
              (r9v7 ?? I:java.lang.Object) from 0x009b: INVOKE (r8v6 ?? I:kotlin.jvm.functions.Function1), (r9v7 ?? I:java.lang.Object) INTERFACE call: kotlin.jvm.functions.Function1.invoke(java.lang.Object):java.lang.Object A[Catch: Exception -> 0x01e2]
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
            	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
            	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
            	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
            	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
            */
        public final java.lang.Object invokeSuspend(
        /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r9v7 ??, still in use, count: 1, list:
              (r9v7 ?? I:java.lang.Object) from 0x009b: INVOKE (r8v6 ?? I:kotlin.jvm.functions.Function1), (r9v7 ?? I:java.lang.Object) INTERFACE call: kotlin.jvm.functions.Function1.invoke(java.lang.Object):java.lang.Object A[Catch: Exception -> 0x01e2]
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
            	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
            	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
            	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
            */
        /*  JADX ERROR: Method generation error
            jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r32v0 ??
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
            	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            */
    }

    public final Object upgradeBundleFromApk(Function1<? super Progress, Unit> function1, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(function1, null), continuation);
    }

    private final UpdateError classifyUpdateRc(int rc) {
        if (rc != -1) {
            switch (rc) {
                case 10:
                    return UpdateError.DNS;
                case 11:
                    return UpdateError.TIMEOUT;
                case 12:
                    return UpdateError.SSL;
                case 13:
                    return UpdateError.HTTP;
                case 14:
                    return UpdateError.UNKNOWN;
                default:
                    return UpdateError.UNKNOWN;
            }
        }
        return UpdateError.TIMEOUT;
    }

    public final Pair<String, UpdateError> resolveLatestReleaseTag() {
        Intrinsics.checkNotNullExpressionValue("import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = 'https://github.com/NousResearch/hermes-agent/releases/latest'\n    req = urllib.request.Request(url, method='HEAD')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if '/releases/tag/' not in final: sys.exit(13)\n    print(urllib.parse.unquote(final.rsplit('/', 1)[1]))\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n", "toString(...)");
        Pair pairRunInTermux$default = runInTermux$default(this, "python3 -c \"import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = 'https://github.com/NousResearch/hermes-agent/releases/latest'\n    req = urllib.request.Request(url, method='HEAD')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if '/releases/tag/' not in final: sys.exit(13)\n    print(urllib.parse.unquote(final.rsplit('/', 1)[1]))\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n\" 2>&1", 15000L, false, 4, null);
        int iIntValue = ((Number) pairRunInTermux$default.component1()).intValue();
        String str = (String) pairRunInTermux$default.component2();
        if (iIntValue != 0) {
            Log.w(TAG, "resolveLatestReleaseTag failed rc=" + iIntValue + " out=" + StringsKt.takeLast(str, 300));
            return new Pair<>((Object) null, classifyUpdateRc(iIntValue));
        }
        String str2 = (String) CollectionsKt.lastOrNull(StringsKt.lines(StringsKt.trim(str).toString()));
        String string = str2 != null ? StringsKt.trim(str2).toString() : null;
        String str3 = string;
        if (str3 == null || str3.length() == 0 || !SAFE_TAG.matches(str3)) {
            Log.w(TAG, "resolveLatestReleaseTag: unusable tag '" + string + "'");
            return new Pair<>((Object) null, UpdateError.UNKNOWN);
        }
        return new Pair<>(string, UpdateError.NONE);
    }

    public final Pair<String, UpdateError> checkRemoteVersion() {
        String strSubstringBefore$default;
        Intrinsics.checkNotNullExpressionValue("import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = 'https://github.com/NousResearch/hermes-agent/releases/latest'\n    req = urllib.request.Request(url, method='HEAD')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if '/releases/tag/' not in final: sys.exit(13)\n    tag = urllib.parse.unquote(final.rsplit('/', 1)[1])\n    raw = 'https://raw.githubusercontent.com/NousResearch/hermes-agent/%s/pyproject.toml' % tag\n    data = urllib.request.urlopen(raw, timeout=10).read().decode()\n    lines = [l for l in data.splitlines() if l.strip().startswith('version')]\n    print((lines[0].split('\\\"')[1] if lines else 'unknown') + ' @ ' + tag)\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n", "toString(...)");
        Pair pairRunInTermux$default = runInTermux$default(this, "python3 -c \"import socket, ssl, sys, urllib.request, urllib.error, urllib.parse\ntry:\n    url = 'https://github.com/NousResearch/hermes-agent/releases/latest'\n    req = urllib.request.Request(url, method='HEAD')\n    final = urllib.request.urlopen(req, timeout=10).geturl()\n    if '/releases/tag/' not in final: sys.exit(13)\n    tag = urllib.parse.unquote(final.rsplit('/', 1)[1])\n    raw = 'https://raw.githubusercontent.com/NousResearch/hermes-agent/%s/pyproject.toml' % tag\n    data = urllib.request.urlopen(raw, timeout=10).read().decode()\n    lines = [l for l in data.splitlines() if l.strip().startswith('version')]\n    print((lines[0].split('\\\"')[1] if lines else 'unknown') + ' @ ' + tag)\nexcept socket.gaierror: sys.exit(10)\nexcept (socket.timeout, TimeoutError): sys.exit(11)\nexcept ssl.SSLError: sys.exit(12)\nexcept urllib.error.HTTPError: sys.exit(13)\nexcept urllib.error.URLError as e:\n    if isinstance(e.reason, ssl.SSLError): sys.exit(12)\n    if isinstance(e.reason, (socket.timeout, TimeoutError)): sys.exit(11)\n    if isinstance(e.reason, socket.gaierror): sys.exit(10)\n    sys.exit(14)\nexcept Exception: sys.exit(14)\n\" 2>&1", 20000L, false, 4, null);
        int iIntValue = ((Number) pairRunInTermux$default.component1()).intValue();
        String str = (String) pairRunInTermux$default.component2();
        String string = null;
        if (iIntValue != 0) {
            Log.w(TAG, "checkRemoteVersion failed rc=" + iIntValue + " out=" + StringsKt.takeLast(str, 300));
            return new Pair<>((Object) null, classifyUpdateRc(iIntValue));
        }
        String str2 = (String) CollectionsKt.lastOrNull(StringsKt.lines(StringsKt.trim(str).toString()));
        String string2 = str2 != null ? StringsKt.trim(str2).toString() : null;
        Log.d(TAG, "checkRemoteVersion: " + string2);
        if (string2 != null && (strSubstringBefore$default = StringsKt.substringBefore$default(string2, " ", (String) null, 2, (Object) null)) != null) {
            string = StringsKt.trim(strSubstringBefore$default).toString();
        }
        return new Pair<>(string, UpdateError.NONE);
    }

    public final UpdateInfo checkForUpdate() {
        String installedVersion = getInstalledVersion();
        Pair<String, UpdateError> pairCheckRemoteVersion = checkRemoteVersion();
        String str = (String) pairCheckRemoteVersion.component1();
        UpdateError updateError = (UpdateError) pairCheckRemoteVersion.component2();
        if (str == null) {
            return new UpdateInfo(installedVersion, "—", false, false, updateError);
        }
        return new UpdateInfo(installedVersion, str, (Intrinsics.areEqual(str, installedVersion) || Intrinsics.areEqual(str, EnvironmentCompat.MEDIA_UNKNOWN) || Intrinsics.areEqual(installedVersion, EnvironmentCompat.MEDIA_UNKNOWN)) ? false : true, true, null, 16, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean performUpdate$default(BootstrapManager bootstrapManager, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return bootstrapManager.performUpdate(function1);
    }

    public final boolean performUpdate(Function1<? super String, Unit> onProgress) {
        try {
            return performUpdateImpl(onProgress);
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "performUpdate: package subsystem poisoned; refused until device restart (" + e.getMessage() + ")");
            if (onProgress != null) {
                onProgress.invoke("Package subsystem disabled until device restart.");
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean performUpdateImpl$default(BootstrapManager bootstrapManager, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return bootstrapManager.performUpdateImpl(function1);
    }

    private final boolean performUpdateImpl(final Function1<? super String, Unit> onProgress) throws Throwable {
        AtomicBoolean atomicBoolean;
        Thread thread;
        Long longOrNull;
        File file = new File(this.homeDir, ".hermes-android/hermes-agent");
        final File file2 = new File(this.tmpDir, "hermes-agent-update.zip");
        if (onProgress != null) {
            onProgress.invoke("Resolving latest release...");
        }
        Pair<String, UpdateError> pairResolveLatestReleaseTag = resolveLatestReleaseTag();
        String str = (String) pairResolveLatestReleaseTag.component1();
        UpdateError updateError = (UpdateError) pairResolveLatestReleaseTag.component2();
        if (str == null) {
            Log.e(TAG, "performUpdate: resolve latest release failed: " + updateError);
            if (onProgress != null) {
                onProgress.invoke("Update failed — cannot resolve latest release (" + updateError + ")");
            }
            return false;
        }
        String str2 = "https://github.com/NousResearch/hermes-agent/archive/refs/tags/" + str + ".zip";
        long jLongValue = 0;
        try {
            Pair pairRunInTermux$default = runInTermux$default(this, "curl -sIL '" + str2 + "' --max-time 10 | grep -i 'content-length' | tail -1 | awk '{print $2}' | tr -d '\\r\\n' 2>&1", 15000L, false, 4, null);
            int iIntValue = ((Number) pairRunInTermux$default.component1()).intValue();
            String str3 = (String) pairRunInTermux$default.component2();
            if (iIntValue == 0 && (longOrNull = StringsKt.toLongOrNull(StringsKt.trim(str3).toString())) != null) {
                jLongValue = longOrNull.longValue();
            }
        } catch (Exception unused) {
        }
        final long j = jLongValue;
        final AtomicBoolean atomicBoolean2 = new AtomicBoolean(true);
        Thread thread2 = new Thread(new Runnable() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                BootstrapManager.performUpdateImpl$lambda$102(atomicBoolean2, file2, j, onProgress);
            }
        });
        thread2.setDaemon(true);
        thread2.start();
        if (onProgress != null) {
            onProgress.invoke("Downloading latest hermes-agent...");
        }
        try {
            atomicBoolean = atomicBoolean2;
            thread = thread2;
            try {
                Pair pairRunWithRetry$default = runWithRetry$default(this, "python3 -c \"\nimport urllib.request, sys, os\nurl='" + str2 + "'\nout='" + file2.getAbsolutePath() + "'\nprint('Downloading', url)\nreq = urllib.request.urlopen(url, timeout=120)\nwith open(out, 'wb') as f:\n    while True:\n        chunk = req.read(64 * 1024)\n        if not chunk: break\n        f.write(chunk)\nprint('Downloaded', os.path.getsize(out), 'bytes')\n\" 2>&1", 3, null, "rm -f " + file2.getAbsolutePath() + " 2>&1 || true", 600000L, false, 36, null);
                atomicBoolean.set(false);
                thread.interrupt();
                if (((Number) pairRunWithRetry$default.getFirst()).intValue() != 0) {
                    Log.e(TAG, "Update download failed: " + StringsKt.takeLast((String) pairRunWithRetry$default.getSecond(), MIN_SPACE_MB));
                    if (onProgress == null) {
                        return false;
                    }
                    onProgress.invoke("Download failed — check network");
                    return false;
                }
                if (onProgress != null) {
                    onProgress.invoke("Extracting update...");
                }
                File file3 = new File(this.tmpDir, "hermes-agent-update-extract");
                if (((Number) runInTermux$default(this, "rm -rf " + file3.getAbsolutePath() + " && mkdir -p " + file3.getAbsolutePath() + " && cd " + file3.getAbsolutePath() + " && python3 -c \"import zipfile; zipfile.ZipFile('" + file2.getAbsolutePath() + "').extractall('.')\" && echo 'Extract OK' 2>&1", 0L, false, 6, null).getFirst()).intValue() != 0) {
                    if (onProgress == null) {
                        return false;
                    }
                    onProgress.invoke("Extract failed");
                    return false;
                }
                File[] fileArrListFiles = file3.listFiles();
                File file4 = null;
                if (fileArrListFiles != null) {
                    int length = fileArrListFiles.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        File file5 = fileArrListFiles[i];
                        if (file5.isDirectory()) {
                            file4 = file5;
                            break;
                        }
                        i++;
                    }
                }
                if (file4 == null) {
                    if (onProgress == null) {
                        return false;
                    }
                    onProgress.invoke("Extract error: no directory found");
                    return false;
                }
                if (onProgress != null) {
                    onProgress.invoke("Updating files...");
                }
                if (((Number) runInTermux$default(this, "cd " + file4.getAbsolutePath() + " && find . -not -path './web/*' -not -path './web' | while read f; do   if [ -d \"$f\" ]; then mkdir -p '" + file.getAbsolutePath() + "/'\"$f\";   elif [ -f \"$f\" ]; then cp -f \"$f\" '" + file.getAbsolutePath() + "/'\"$f\"; fi; done && echo 'Copy OK' 2>&1", 0L, false, 6, null).getFirst()).intValue() != 0) {
                    if (onProgress == null) {
                        return false;
                    }
                    onProgress.invoke("File copy failed");
                    return false;
                }
                runInTermux$default(this, "rm -rf " + file3.getAbsolutePath() + " " + file2.getAbsolutePath() + " 2>&1", 0L, false, 6, null);
                runInTermux$default(this, "cd " + file.getAbsolutePath() + " && sed -i 's/PyJWT\\[crypto\\]/PyJWT/g' pyproject.toml && sed -i 's/uvicorn\\[standard\\]/uvicorn/g' pyproject.toml && sed -i '/^[[:space:]]*\"Pillow==/d' pyproject.toml 2>&1", 0L, false, 6, null);
                if (onProgress != null) {
                    onProgress.invoke("Reinstalling dependencies...");
                }
                Pair<Integer, String> pairInstallCoreDeps = installCoreDeps();
                if (((Number) pairInstallCoreDeps.getFirst()).intValue() != 0) {
                    Log.w(TAG, "Update core-deps refresh failed: " + StringsKt.takeLast((String) pairInstallCoreDeps.getSecond(), MIN_SPACE_MB));
                    if (onProgress == null) {
                        return false;
                    }
                    onProgress.invoke("Dependency install failed — check network and retry");
                    return false;
                }
                Pair pairRunInTermuxPkg$default = runInTermuxPkg$default(this, "cd " + file.getAbsolutePath() + " && python3 -m pip install --no-deps --no-build-isolation -e . 2>&1", 0L, 2, null);
                patchPydanticVersionCheck();
                String installedVersion = getInstalledVersion();
                if (((Number) pairRunInTermuxPkg$default.getFirst()).intValue() != 0) {
                    Log.w(TAG, "Update pip reinstall failed: " + StringsKt.takeLast((String) pairRunInTermuxPkg$default.getSecond(), MIN_SPACE_MB));
                    if (onProgress != null) {
                        onProgress.invoke("Updated to v" + installedVersion + " (restart app to finish)");
                    }
                    return true;
                }
                if (onProgress != null) {
                    onProgress.invoke("Updated to v" + installedVersion);
                }
                Log.d(TAG, "hermes-agent updated to " + installedVersion);
                return true;
            } catch (Throwable th) {
                th = th;
                atomicBoolean.set(false);
                thread.interrupt();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            atomicBoolean = atomicBoolean2;
            thread = thread2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void performUpdateImpl$lambda$102(AtomicBoolean atomicBoolean, File file, long j, Function1 function1) {
        String str;
        while (atomicBoolean.get()) {
            try {
                long length = file.exists() ? file.length() : 0L;
                if (j > 0) {
                    long j2 = 1024;
                    str = "Downloading: " + RangesKt.coerceIn((int) ((((long) 100) * length) / j), 0, 100) + "%  (" + ((length / j2) / j2) + "MB / " + ((j / j2) / j2) + "MB)";
                } else {
                    str = "Downloading: " + (length / ((long) 1024)) + " KB";
                }
                if (function1 != null) {
                    function1.invoke(str);
                }
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
                return;
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u001d\u001a\u00020\u001eJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003Jw\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u0003HÆ\u0001J\u0013\u0010+\u001a\u00020\u00032\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020.HÖ\u0001J\t\u0010/\u001a\u00020\u001eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0011\u0010\u001c\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0011¨\u00060"}, d2 = {"Lcom/hermes/android/BootstrapManager$HealthReport;", "", "bashExists", "", "pythonExists", "gitExists", "pipExists", "libsqliteExists", "hermesAgentCloned", "hermesLauncherExists", "hermesLauncherShebangOk", "networkReachable", "openaiInstalled", "anthropicInstalled", "<init>", "(ZZZZZZZZZZZ)V", "getBashExists", "()Z", "getPythonExists", "getGitExists", "getPipExists", "getLibsqliteExists", "getHermesAgentCloned", "getHermesLauncherExists", "getHermesLauncherShebangOk", "getNetworkReachable", "getOpenaiInstalled", "getAnthropicInstalled", "isHealthy", "summary", "", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class HealthReport {
        public static final int $stable = 0;
        private final boolean anthropicInstalled;
        private final boolean bashExists;
        private final boolean gitExists;
        private final boolean hermesAgentCloned;
        private final boolean hermesLauncherExists;
        private final boolean hermesLauncherShebangOk;
        private final boolean libsqliteExists;
        private final boolean networkReachable;
        private final boolean openaiInstalled;
        private final boolean pipExists;
        private final boolean pythonExists;

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getBashExists() {
            return this.bashExists;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final boolean getOpenaiInstalled() {
            return this.openaiInstalled;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final boolean getAnthropicInstalled() {
            return this.anthropicInstalled;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getPythonExists() {
            return this.pythonExists;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getGitExists() {
            return this.gitExists;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getPipExists() {
            return this.pipExists;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getLibsqliteExists() {
            return this.libsqliteExists;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final boolean getHermesAgentCloned() {
            return this.hermesAgentCloned;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final boolean getHermesLauncherExists() {
            return this.hermesLauncherExists;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final boolean getHermesLauncherShebangOk() {
            return this.hermesLauncherShebangOk;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final boolean getNetworkReachable() {
            return this.networkReachable;
        }

        public final HealthReport copy(boolean bashExists, boolean pythonExists, boolean gitExists, boolean pipExists, boolean libsqliteExists, boolean hermesAgentCloned, boolean hermesLauncherExists, boolean hermesLauncherShebangOk, boolean networkReachable, boolean openaiInstalled, boolean anthropicInstalled) {
            return new HealthReport(bashExists, pythonExists, gitExists, pipExists, libsqliteExists, hermesAgentCloned, hermesLauncherExists, hermesLauncherShebangOk, networkReachable, openaiInstalled, anthropicInstalled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HealthReport)) {
                return false;
            }
            HealthReport healthReport = (HealthReport) other;
            return this.bashExists == healthReport.bashExists && this.pythonExists == healthReport.pythonExists && this.gitExists == healthReport.gitExists && this.pipExists == healthReport.pipExists && this.libsqliteExists == healthReport.libsqliteExists && this.hermesAgentCloned == healthReport.hermesAgentCloned && this.hermesLauncherExists == healthReport.hermesLauncherExists && this.hermesLauncherShebangOk == healthReport.hermesLauncherShebangOk && this.networkReachable == healthReport.networkReachable && this.openaiInstalled == healthReport.openaiInstalled && this.anthropicInstalled == healthReport.anthropicInstalled;
        }

        public int hashCode() {
            return (((((((((((((((((((Boolean.hashCode(this.bashExists) * 31) + Boolean.hashCode(this.pythonExists)) * 31) + Boolean.hashCode(this.gitExists)) * 31) + Boolean.hashCode(this.pipExists)) * 31) + Boolean.hashCode(this.libsqliteExists)) * 31) + Boolean.hashCode(this.hermesAgentCloned)) * 31) + Boolean.hashCode(this.hermesLauncherExists)) * 31) + Boolean.hashCode(this.hermesLauncherShebangOk)) * 31) + Boolean.hashCode(this.networkReachable)) * 31) + Boolean.hashCode(this.openaiInstalled)) * 31) + Boolean.hashCode(this.anthropicInstalled);
        }

        public String toString() {
            return "HealthReport(bashExists=" + this.bashExists + ", pythonExists=" + this.pythonExists + ", gitExists=" + this.gitExists + ", pipExists=" + this.pipExists + ", libsqliteExists=" + this.libsqliteExists + ", hermesAgentCloned=" + this.hermesAgentCloned + ", hermesLauncherExists=" + this.hermesLauncherExists + ", hermesLauncherShebangOk=" + this.hermesLauncherShebangOk + ", networkReachable=" + this.networkReachable + ", openaiInstalled=" + this.openaiInstalled + ", anthropicInstalled=" + this.anthropicInstalled + ")";
        }

        public HealthReport(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
            this.bashExists = z;
            this.pythonExists = z2;
            this.gitExists = z3;
            this.pipExists = z4;
            this.libsqliteExists = z5;
            this.hermesAgentCloned = z6;
            this.hermesLauncherExists = z7;
            this.hermesLauncherShebangOk = z8;
            this.networkReachable = z9;
            this.openaiInstalled = z10;
            this.anthropicInstalled = z11;
        }

        public final boolean getBashExists() {
            return this.bashExists;
        }

        public final boolean getPythonExists() {
            return this.pythonExists;
        }

        public final boolean getGitExists() {
            return this.gitExists;
        }

        public final boolean getPipExists() {
            return this.pipExists;
        }

        public final boolean getLibsqliteExists() {
            return this.libsqliteExists;
        }

        public final boolean getHermesAgentCloned() {
            return this.hermesAgentCloned;
        }

        public final boolean getHermesLauncherExists() {
            return this.hermesLauncherExists;
        }

        public final boolean getHermesLauncherShebangOk() {
            return this.hermesLauncherShebangOk;
        }

        public final boolean getNetworkReachable() {
            return this.networkReachable;
        }

        public final boolean getOpenaiInstalled() {
            return this.openaiInstalled;
        }

        public final boolean getAnthropicInstalled() {
            return this.anthropicInstalled;
        }

        public final boolean isHealthy() {
            return this.bashExists && this.pythonExists && this.pipExists && this.libsqliteExists && this.hermesAgentCloned && this.hermesLauncherExists && this.hermesLauncherShebangOk && this.openaiInstalled && this.anthropicInstalled;
        }

        public final String summary() {
            StringBuilder sb = new StringBuilder();
            StringBuilder sbAppend = sb.append("bash: ".concat(this.bashExists ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend.append('\n'), "append(...)");
            StringBuilder sbAppend2 = sb.append("python: ".concat(this.pythonExists ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend2, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend2.append('\n'), "append(...)");
            StringBuilder sbAppend3 = sb.append("git: ".concat(this.gitExists ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend3, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend3.append('\n'), "append(...)");
            StringBuilder sbAppend4 = sb.append("pip: ".concat(this.pipExists ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend4, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend4.append('\n'), "append(...)");
            StringBuilder sbAppend5 = sb.append("libsqlite: ".concat(this.libsqliteExists ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend5, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend5.append('\n'), "append(...)");
            StringBuilder sbAppend6 = sb.append("hermes-agent: ".concat(this.hermesAgentCloned ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend6, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend6.append('\n'), "append(...)");
            StringBuilder sbAppend7 = sb.append("launcher: ".concat(this.hermesLauncherExists ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend7, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend7.append('\n'), "append(...)");
            StringBuilder sbAppend8 = sb.append("launcher shebang: ".concat(this.hermesLauncherShebangOk ? "OK" : "INVALID"));
            Intrinsics.checkNotNullExpressionValue(sbAppend8, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend8.append('\n'), "append(...)");
            StringBuilder sbAppend9 = sb.append("openai: ".concat(this.openaiInstalled ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend9, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend9.append('\n'), "append(...)");
            StringBuilder sbAppend10 = sb.append("anthropic: ".concat(this.anthropicInstalled ? "OK" : "MISSING"));
            Intrinsics.checkNotNullExpressionValue(sbAppend10, "append(...)");
            Intrinsics.checkNotNullExpressionValue(sbAppend10.append('\n'), "append(...)");
            sb.append("network: ".concat(this.networkReachable ? "OK" : "UNREACHABLE"));
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x020b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final HealthReport healthCheck() {
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        File file;
        boolean z4;
        boolean z5;
        boolean zBooleanValue;
        Boolean boolValueOf;
        boolean z6;
        Boolean boolValueOf2;
        boolean z7;
        boolean z8;
        File[] fileArr;
        int i;
        boolean z9;
        boolean zExists = new File(this.prefixDir, "bin/bash").exists();
        boolean zExists2 = new File(this.prefixDir, "bin/python3").exists();
        boolean z10 = new File(this.prefixDir, "bin/git").exists() || new File(this.prefixDir, "libexec/git-core/git").exists();
        boolean z11 = new File(this.prefixDir, "bin/pip").exists() || new File(this.prefixDir, "bin/pip3").exists();
        boolean zExists3 = new File(this.prefixDir, "lib/libsqlite3.so").exists();
        boolean zIsHermesInstalled = isHermesInstalled();
        File file2 = new File(this.homeDir, ".hermes-android/bin/hermes");
        boolean zExists4 = file2.exists();
        if (zExists4) {
            try {
                str = (String) CollectionsKt.firstOrNull(FilesKt.readLines$default(file2, (Charset) null, 1, (Object) null));
                if (str == null) {
                    str = "";
                }
            } catch (Exception unused) {
            }
            if (StringsKt.startsWith$default(str, "#!", false, 2, (Object) null)) {
                z = new File(StringsKt.trim(StringsKt.removePrefix(str, "#!")).toString()).exists();
            }
        }
        boolean zHasNetwork = zExists ? hasNetwork() : false;
        File[] fileArrListFiles = new File(this.prefixDir, "lib").listFiles();
        if (fileArrListFiles != null) {
            ArrayList arrayList = new ArrayList();
            int length = fileArrListFiles.length;
            int i2 = 0;
            while (i2 < length) {
                File file3 = fileArrListFiles[i2];
                if (file3.isDirectory()) {
                    String name = file3.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    fileArr = fileArrListFiles;
                    z8 = z;
                    i = length;
                    z9 = zHasNetwork;
                    if (StringsKt.startsWith$default(name, "python", false, 2, (Object) null)) {
                        arrayList.add(file3);
                    }
                } else {
                    z8 = z;
                    fileArr = fileArrListFiles;
                    i = length;
                    z9 = zHasNetwork;
                }
                i2++;
                fileArrListFiles = fileArr;
                length = i;
                zHasNetwork = z9;
                z = z8;
            }
            z2 = z;
            z3 = zHasNetwork;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                File file4 = new File((File) it.next(), "site-packages");
                if (!file4.isDirectory()) {
                    file4 = null;
                }
                if (file4 != null) {
                    arrayList2.add(file4);
                }
            }
            file = (File) CollectionsKt.firstOrNull(arrayList2);
        } else {
            z2 = z;
            z3 = zHasNetwork;
            file = null;
        }
        if (file != null) {
            File[] fileArrListFiles2 = file.listFiles();
            if (fileArrListFiles2 != null) {
                int length2 = fileArrListFiles2.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        z4 = zExists4;
                        z7 = false;
                        break;
                    }
                    File file5 = fileArrListFiles2[i3];
                    String name2 = file5.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    File[] fileArr2 = fileArrListFiles2;
                    int i4 = length2;
                    z4 = zExists4;
                    if (StringsKt.startsWith$default(name2, "openai-", false, 2, (Object) null)) {
                        String name3 = file5.getName();
                        Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                        if (StringsKt.endsWith$default(name3, ".dist-info", false, 2, (Object) null) && file5.isDirectory()) {
                            z7 = true;
                            break;
                        }
                    }
                    i3++;
                    fileArrListFiles2 = fileArr2;
                    length2 = i4;
                    zExists4 = z4;
                }
                boolValueOf2 = Boolean.valueOf(z7);
            } else {
                z4 = zExists4;
                boolValueOf2 = null;
            }
            boolean zBooleanValue2 = boolValueOf2 != null ? boolValueOf2.booleanValue() : false;
            if (file == null) {
                File[] fileArrListFiles3 = file.listFiles();
                if (fileArrListFiles3 != null) {
                    int length3 = fileArrListFiles3.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length3) {
                            z5 = false;
                            z6 = false;
                            break;
                        }
                        File file6 = fileArrListFiles3[i5];
                        String name4 = file6.getName();
                        Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                        File[] fileArr3 = fileArrListFiles3;
                        int i6 = length3;
                        z5 = false;
                        if (StringsKt.startsWith$default(name4, "anthropic-", false, 2, (Object) null)) {
                            String name5 = file6.getName();
                            Intrinsics.checkNotNullExpressionValue(name5, "getName(...)");
                            if (StringsKt.endsWith$default(name5, ".dist-info", false, 2, (Object) null) && file6.isDirectory()) {
                                z6 = true;
                                break;
                            }
                        }
                        i5++;
                        fileArrListFiles3 = fileArr3;
                        length3 = i6;
                    }
                    boolValueOf = Boolean.valueOf(z6);
                } else {
                    z5 = false;
                    boolValueOf = null;
                }
                if (boolValueOf != null) {
                    zBooleanValue = boolValueOf.booleanValue();
                }
                return new HealthReport(zExists, zExists2, z10, z11, zExists3, zIsHermesInstalled, z4, z2, z3, zBooleanValue2, zBooleanValue);
            }
            z5 = false;
            zBooleanValue = z5;
            return new HealthReport(zExists, zExists2, z10, z11, zExists3, zIsHermesInstalled, z4, z2, z3, zBooleanValue2, zBooleanValue);
        }
        z4 = zExists4;
        if (file == null) {
        }
        zBooleanValue = z5;
        return new HealthReport(zExists, zExists2, z10, z11, zExists3, zIsHermesInstalled, z4, z2, z3, zBooleanValue2, zBooleanValue);
    }

    public final Object repair(final Function1<? super Progress, Unit> function1, Continuation<? super Unit> continuation) throws IOException {
        final int i;
        Companion companion = INSTANCE;
        companion.requirePackageSubsystemHealthy();
        HealthReport healthReportHealthCheck = healthCheck();
        Log.d(TAG, "Repair start. Current health:\n" + healthReportHealthCheck.summary());
        int i2 = 5;
        function1.invoke(new Progress(1, i2, "Analyzing installation", null, 8, null));
        if (!healthReportHealthCheck.getBashExists()) {
            throw new RuntimeException("Bootstrap is missing. Use 'Full Reinstall' instead of Repair.");
        }
        function1.invoke(new Progress(2, i2, "Cleaning dpkg state", null, 8, null));
        runInTermuxPkg$default(this, "dpkg --configure -a 2>&1 || true", 0L, 2, null);
        healDpkgState();
        if (healthReportHealthCheck.getGitExists()) {
            i = 5;
        } else {
            function1.invoke(new Progress(2, i2, "Installing git", null, 8, null));
            runInTermuxPkg$default(this, "apt-get update -y 2>&1 | tail -5 || true", 0L, 2, null);
            i = 5;
            runWithRetryPkg$default(this, "apt-get install -y git 2>&1", 2, null, null, 12, null);
        }
        if (!healthReportHealthCheck.getPythonExists() || !healthReportHealthCheck.getPipExists()) {
            function1.invoke(new Progress(3, i, "Reinstalling Python", null, 8, null));
            String str = "python-" + companion.detectTermuxArch() + ".zip";
            try {
                this.context.getAssets().open(str).close();
                installPythonBundle(str);
            } catch (Exception unused) {
                runWithRetryPkg("apt update 2>&1 || true ; apt install -y python 2>&1 || apt install -y python3 2>&1", 3, new Function2() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda25
                    public final Object invoke(Object obj, Object obj2) {
                        return BootstrapManager.repair$lambda$112(function1, i, ((Integer) obj).intValue(), (String) obj2);
                    }
                }, "dpkg --configure -a 2>&1 || true");
            }
        }
        if (!healthReportHealthCheck.getLibsqliteExists()) {
            function1.invoke(new Progress(3, i, "Installing libsqlite", null, 8, null));
            if (!ensureSqlite()) {
                throw new RuntimeException(this.context.getString(R.string.error_sqlite_install));
            }
        }
        function1.invoke(new Progress(3, i, "Rewriting launchers", null, 8, null));
        installPatches();
        if (!healthReportHealthCheck.getHermesAgentCloned()) {
            installHermesAgent$default(this, false, 1, null);
        } else {
            function1.invoke(new Progress(4, i, "Checking pip", null, 8, null));
            if (((Number) runInTermux$default(this, "python3 -m pip --version 2>&1", 0L, false, 6, null).getFirst()).intValue() != 0) {
                appendLog$default(this, "[repair] pip missing — installing from bundled wheel...", false, 0L, 6, null);
                function1.invoke(new Progress(4, i, "Bootstrapping pip", null, 8, null));
                installPipFromBundle();
            }
            int i3 = 8;
            DefaultConstructorMarker defaultConstructorMarker = null;
            int i4 = 4;
            String str2 = null;
            int i5 = i;
            function1.invoke(new Progress(i4, i5, "Installing native wheels", str2, i3, defaultConstructorMarker));
            new WheelInstaller(this.context, this.homeDir, new Function1() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda26
                public final Object invoke(Object obj) {
                    return BootstrapManager.repair$lambda$113(this.f$0, (String) obj);
                }
            }).installFromLocal(CollectionsKt.listOf(new String[]{"pydantic-core", "jiter", "cryptography", "pydantic"}), true);
            patchPydanticVersionCheck();
            appendLog$default(this, "[repair] installing core deps via installCoreDeps()...", false, 0L, 6, null);
            function1.invoke(new Progress(i4, i5, "Installing dependencies", str2, i3, defaultConstructorMarker));
            Pair<Integer, String> pairInstallCoreDeps = installCoreDeps();
            if (((Number) pairInstallCoreDeps.getFirst()).intValue() != 0) {
                appendLog$default(this, "[repair] core deps install failed (rc=" + pairInstallCoreDeps.getFirst() + "): " + StringsKt.takeLast((String) pairInstallCoreDeps.getSecond(), 300), false, 0L, 6, null);
            }
        }
        function1.invoke(new Progress(i, i, "Repair complete", null, 8, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit repair$lambda$112(Function1 function1, int i, int i2, String str) {
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        function1.invoke(new Progress(3, i, "Reinstalling Python", "Network retry " + i2 + "/3..."));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair repair$lambda$113(BootstrapManager bootstrapManager, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        return runInTermuxPkg$default(bootstrapManager, str, 0L, 2, null);
    }

    public final Object fullReinstall(Function1<? super Progress, Unit> function1, Continuation<? super Unit> continuation) throws IOException {
        INSTANCE.requirePackageSubsystemHealthy();
        Log.w(TAG, "Full reinstall: wiping prefix and hermes-android dirs");
        try {
            FilesKt.deleteRecursively(this.prefixDir);
            FilesKt.deleteRecursively(new File(this.homeDir, ".hermes-android"));
        } catch (Exception e) {
            Log.e(TAG, "Failed to wipe dirs: " + e.getMessage());
        }
        Object objInstall = install(function1, continuation);
        return objInstall == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInstall : Unit.INSTANCE;
    }

    public final boolean ensureSqlite() {
        try {
            final File file = new File(new File(this.prefixDir, "lib"), "libsqlite3.so");
            return ((Boolean) INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda18
                public final Object invoke() {
                    return Boolean.valueOf(BootstrapManager.ensureSqlite$lambda$116$lambda$114(file));
                }
            }, true, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda19
                public final Object invoke() {
                    return Boolean.valueOf(BootstrapManager.ensureSqlite$lambda$116$lambda$115(this.f$0, file));
                }
            })).booleanValue();
        } catch (PackageSubsystemPoisonedException e) {
            Log.e(TAG, "ensureSqlite: package subsystem poisoned; refused until device restart (" + e.getMessage() + ")");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ensureSqlite$lambda$116$lambda$114(File file) {
        return !file.exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ensureSqlite$lambda$116$lambda$115(BootstrapManager bootstrapManager, File file) {
        Log.d(TAG, "libsqlite3.so not found, installing...");
        bootstrapManager.healDpkgState();
        for (int i = 1; i < 4; i++) {
            if (i > 1) {
                try {
                    bootstrapManager.runInTermux("dpkg --configure -a 2>&1 || true ; apt update 2>&1 || true", 60000L, true);
                    bootstrapManager.healDpkgState();
                } catch (PackageSubsystemPoisonedException e) {
                    throw e;
                } catch (Exception e2) {
                    Log.w(TAG, "ensureSqlite attempt " + i + " failed: " + e2.getMessage());
                }
            }
            bootstrapManager.runInTermux("apt install -y libsqlite 2>&1", 120000L, true);
            if (file.exists()) {
                Log.d(TAG, "libsqlite installed successfully (attempt " + i + ")");
                return true;
            }
            Log.w(TAG, "libsqlite still missing after attempt " + i);
        }
        Log.w(TAG, "libsqlite install failed after 3 attempts; sqlite3 unavailable");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit patchPydanticVersionCheck$lambda$118(BootstrapManager bootstrapManager) {
        bootstrapManager.patchPydanticVersionCheckLocked();
        return Unit.INSTANCE;
    }

    public final void patchPydanticVersionCheck() {
        INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda14
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.patchPydanticVersionCheck$lambda$117());
            }
        }, Unit.INSTANCE, new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda15
            public final Object invoke() {
                return BootstrapManager.patchPydanticVersionCheck$lambda$118(this.f$0);
            }
        });
    }

    private final void patchPydanticVersionCheckLocked() {
        File file = new File(this.prefixDir, "tmp/pydantic_ver_patch.py");
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        FilesKt.writeText$default(file, "import os, re, site, glob, sys\n\n# 1. 找出實際安裝的 pydantic-core 版本\ncore_ver = None\ntry:\n    import pydantic_core\n    core_ver = pydantic_core.__version__\nexcept ImportError:\n    pass\n\nif not core_ver:\n    # fallback：掃描 dist-info 目錄名稱\n    for sp in site.getsitepackages():\n        if not os.path.isdir(sp):\n            continue\n        for entry in os.listdir(sp):\n            if entry.startswith('pydantic_core-') and entry.endswith('.dist-info'):\n                core_ver = entry[len('pydantic_core-'):-len('.dist-info')]\n                break\n        if core_ver:\n            break\n\nif not core_ver:\n    print('[pydantic-patch] ERROR: pydantic-core not found in site-packages', file=sys.stderr)\n    sys.exit(1)\n\nprint(f'[pydantic-patch] Detected pydantic-core=={core_ver}')\npatched = 0\n\nfor sp in site.getsitepackages():\n    if not os.path.isdir(sp):\n        continue\n\n    # 2a. 修補 pydantic/version.py:\n    #   - PYDANTIC_CORE_VERSION = '<old>' → '<actual>'\n    #   - _ensure_pydantic_core_version() → no-op（徹底禁用版本檢查）\n    vf = os.path.join(sp, 'pydantic', 'version.py')\n    if os.path.exists(vf):\n        c = open(vf).read()\n        # 替換常數值\n        c2 = re.sub(\n            r\"(PYDANTIC_CORE_VERSION\\s*=\\s*)['\\\"][^'\\\"]+['\\\"]\",\n            r\"\\g<1>'\" + core_ver + \"'\",\n            c,\n        )\n        # 將 _ensure_pydantic_core_version 函式替換為 no-op\n        # 匹配整個函式（從 def 到下一個頂層 def 或文件結尾）\n        c2 = re.sub(\n            r'def _ensure_pydantic_core_version\\(\\).*?(?=\\ndef |\\Z)',\n            'def _ensure_pydantic_core_version() -> None:\\n    pass  # patched: skip version check on Android\\n\\n',\n            c2,\n            flags=re.DOTALL,\n        )\n        if c2 != c:\n            open(vf, 'w').write(c2)\n            print(f'[pydantic-patch] Patched version.py → PYDANTIC_CORE_VERSION={core_ver} + disabled check')\n            patched += 1\n        else:\n            print(f'[pydantic-patch] version.py already up-to-date')\n\n    # 2b. 修補 pydantic dist-info METADATA: Requires-Dist: pydantic-core==<old> → ==<actual>\n    for md in glob.glob(os.path.join(sp, 'pydantic-*.dist-info')):\n        mf = os.path.join(md, 'METADATA')\n        if os.path.exists(mf):\n            c = open(mf).read()\n            c2 = re.sub(\n                r'(Requires-Dist:\\s*pydantic-core\\s*==\\s*)[^\\s\\n]+',\n                r'\\g<1>' + core_ver,\n                c,\n            )\n            if c2 != c:\n                open(mf, 'w').write(c2)\n                print(f'[pydantic-patch] Patched METADATA → pydantic-core=={core_ver}')\n                patched += 1\n            else:\n                print(f'[pydantic-patch] METADATA already up-to-date')\n\nprint(f'[pydantic-patch] Done: {patched} file(s) patched')", (Charset) null, 2, (Object) null);
        Pair pairRunInTermux$default = runInTermux$default(this, "python3 '" + file.getAbsolutePath() + "' 2>&1", 0L, true, 2, null);
        int iIntValue = ((Number) pairRunInTermux$default.component1()).intValue();
        String str = (String) pairRunInTermux$default.component2();
        appendLog$default(this, "[pydantic-patch] " + str, false, 0L, 6, null);
        if (iIntValue != 0) {
            Log.w(TAG, "patchPydanticVersionCheck failed (rc=" + iIntValue + "): " + StringsKt.takeLast(str, 200));
        } else {
            Log.i(TAG, "patchPydanticVersionCheck OK: " + CollectionsKt.lastOrNull(StringsKt.lines(str)));
        }
        try {
            Result.Companion companion = Result.Companion;
            BootstrapManager bootstrapManager = this;
            Result.constructor-impl(Boolean.valueOf(file.delete()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
    }

    static /* synthetic */ Pair runInTermuxPkg$default(BootstrapManager bootstrapManager, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = LocationRequestCompat.PASSIVE_INTERVAL;
        }
        return bootstrapManager.runInTermuxPkg(str, j);
    }

    private final Pair<Integer, String> runInTermuxPkg(final String command, final long timeoutMs) {
        return (Pair) INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda12
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.runInTermuxPkg$lambda$120());
            }
        }, TuplesKt.to(-1, "package op skipped"), new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda13
            public final Object invoke() {
                return BootstrapManager.runInTermuxPkg$lambda$121(this.f$0, command, timeoutMs);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair runInTermuxPkg$lambda$121(BootstrapManager bootstrapManager, String str, long j) {
        return bootstrapManager.runInTermux(str, j, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Pair runWithRetryPkg$default(BootstrapManager bootstrapManager, String str, int i, Function2 function2, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 3;
        }
        if ((i2 & 4) != 0) {
            function2 = null;
        }
        if ((i2 & 8) != 0) {
            str2 = null;
        }
        return bootstrapManager.runWithRetryPkg(str, i, function2, str2);
    }

    private final Pair<Integer, String> runWithRetryPkg(final String command, final int maxAttempts, final Function2<? super Integer, ? super String, Unit> onRetry, final String cleanupOnRetry) {
        return (Pair) INSTANCE.withPackageOp(new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda7
            public final Object invoke() {
                return Boolean.valueOf(BootstrapManager.runWithRetryPkg$lambda$122());
            }
        }, TuplesKt.to(-1, "package op skipped"), new Function0() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda8
            public final Object invoke() {
                return BootstrapManager.runWithRetryPkg$lambda$123(this.f$0, command, maxAttempts, onRetry, cleanupOnRetry);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair runWithRetryPkg$lambda$123(BootstrapManager bootstrapManager, String str, int i, Function2 function2, String str2) {
        return runWithRetry$default(bootstrapManager, str, i, function2, str2, 0L, true, 16, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Pair runWithRetry$default(BootstrapManager bootstrapManager, String str, int i, Function2 function2, String str2, long j, boolean z, int i2, Object obj) {
        return bootstrapManager.runWithRetry(str, (i2 & 2) != 0 ? 3 : i, (i2 & 4) != 0 ? null : function2, (i2 & 8) == 0 ? str2 : null, (i2 & 16) != 0 ? LocationRequestCompat.PASSIVE_INTERVAL : j, (i2 & 32) != 0 ? false : z);
    }

    private final Pair<Integer, String> runWithRetry(String command, int maxAttempts, Function2<? super Integer, ? super String, Unit> onRetry, String cleanupOnRetry, long timeoutMs, boolean mutatesPrefix) {
        Pair<Integer, String> pairRunInTermux;
        Pair<Integer, String> pair = TuplesKt.to(-1, "");
        int i = 1;
        if (1 > maxAttempts) {
            return pair;
        }
        while (true) {
            pairRunInTermux = runInTermux(command, timeoutMs, mutatesPrefix);
            if (((Number) pairRunInTermux.getFirst()).intValue() != 0) {
                Log.w(TAG, "runWithRetry attempt " + i + "/" + maxAttempts + " failed (rc=" + pairRunInTermux.getFirst() + "): " + StringsKt.takeLast((String) pairRunInTermux.getSecond(), 300));
                if (i != maxAttempts) {
                    if (onRetry != null) {
                        onRetry.invoke(Integer.valueOf(i), StringsKt.takeLast((String) pairRunInTermux.getSecond(), 300));
                    }
                    if (cleanupOnRetry != null) {
                        runInTermux$default(this, cleanupOnRetry, 0L, mutatesPrefix, 2, null);
                    }
                    try {
                        Thread.sleep(((long) i) * 2000);
                    } catch (InterruptedException unused) {
                    }
                    if (i == maxAttempts) {
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            } else {
                return pairRunInTermux;
            }
        }
        return pairRunInTermux;
    }

    public final boolean hasNetwork() {
        return isInstalled() && ((Number) runInTermux$default(this, "curl -sS --max-time 5 -o /dev/null -w '%{http_code}' https://packages-cf.termux.dev/ 2>&1", 0L, false, 6, null).component1()).intValue() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Process runInTermuxStreaming(String command, final Function1<? super String, Unit> onLine) throws IOException {
        String str;
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(onLine, "onLine");
        if (new File(this.prefixDir, "bin/bash").exists()) {
            str = this.prefixDir.getAbsolutePath() + "/bin/bash";
        } else {
            str = new File(this.prefixDir, "bin/sh").exists() ? this.prefixDir.getAbsolutePath() + "/bin/sh" : "/system/bin/sh";
        }
        String[] strArrBuild = EnvironmentBuilder.INSTANCE.build(this.context);
        String str2 = null;
        if (Build.VERSION.SDK_INT >= 29 && StringsKt.startsWith$default(str, "/data/", false, 2, (Object) null)) {
            String[] strArr = Build.SUPPORTED_64_BIT_ABIS;
            Intrinsics.checkNotNullExpressionValue(strArr, "SUPPORTED_64_BIT_ABIS");
            str2 = !(strArr.length == 0) ? "/system/bin/linker64" : "/system/bin/linker";
        }
        String[] strArr2 = str2 != null ? new String[]{str2, str, "-c", command} : new String[]{str, "-c", command};
        Log.d(TAG, "runInTermuxStreaming: cmd=" + command);
        ProcessBuilder processBuilderRedirectErrorStream = new ProcessBuilder((String[]) Arrays.copyOf(strArr2, strArr2.length)).directory(this.homeDir).redirectErrorStream(true);
        processBuilderRedirectErrorStream.environment().clear();
        for (String str3 : strArrBuild) {
            List listSplit$default = StringsKt.split$default(str3, new String[]{"="}, false, 2, 2, (Object) null);
            if (listSplit$default.size() == 2) {
                Map<String, String> mapEnvironment = processBuilderRedirectErrorStream.environment();
                Intrinsics.checkNotNullExpressionValue(mapEnvironment, "environment(...)");
                mapEnvironment.put(listSplit$default.get(0), listSplit$default.get(1));
            }
        }
        final Process processStart = processBuilderRedirectErrorStream.start();
        Thread thread = new Thread(new Runnable() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                BootstrapManager.runInTermuxStreaming$lambda$126(processStart, onLine);
            }
        }, "termux-streamer");
        thread.setDaemon(true);
        thread.start();
        Intrinsics.checkNotNull(processStart);
        return processStart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runInTermuxStreaming$lambda$126(Process process, Function1 function1) {
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[512];
        InputStream inputStream = process.getInputStream();
        while (true) {
            try {
                int i = inputStream.read(bArr);
                if (i < 0) {
                    break;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    char c = (char) (bArr[i2] & 255);
                    if (c == '\n' || c == '\r') {
                        if (sb.length() > 0) {
                            String string = sb.toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            function1.invoke(string);
                            StringsKt.clear(sb);
                        }
                    } else {
                        sb.append(c);
                    }
                }
            } catch (Exception e) {
                Log.w(TAG, "stream-reader: " + e.getMessage());
                return;
            }
        }
        if (sb.length() > 0) {
            String string2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            function1.invoke(string2);
        }
    }

    public static /* synthetic */ Pair runInTermux$default(BootstrapManager bootstrapManager, String str, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            j = LocationRequestCompat.PASSIVE_INTERVAL;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return bootstrapManager.runInTermux(str, j, z);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:104|(1:43)(2:45|(1:47)(10:48|(3:50|(1:52)(2:(1:54)|55)|56)(0)|(1:59)|60|98|61|265|65|(4:67|(1:69)(1:70)|71|(1:73)(1:74))|(2:76|77)(1:78)))|44|(1:59)|60|98|61|265) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0266 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0239  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair<Integer, String> runInTermux(String command, long timeoutMs, boolean mutatesPrefix) {
        String str;
        String str2;
        String[] strArr;
        PackageSubsystemPoisonedException packageSubsystemPoisonedException;
        PackageSubsystemPoisonedException packageSubsystemPoisonedException2;
        boolean z;
        int i;
        int iExitValue;
        String string;
        StringBuilder sb;
        Intrinsics.checkNotNullParameter(command, "command");
        if (mutatesPrefix) {
            INSTANCE.requirePackageSubsystemHealthy();
        }
        if (new File(this.prefixDir, "bin/bash").exists()) {
            str = this.prefixDir.getAbsolutePath() + "/bin/bash";
        } else {
            str = new File(this.prefixDir, "bin/sh").exists() ? this.prefixDir.getAbsolutePath() + "/bin/sh" : "/system/bin/sh";
        }
        String[] strArrBuild = EnvironmentBuilder.INSTANCE.build(this.context);
        if (Build.VERSION.SDK_INT < 29 || !StringsKt.startsWith$default(str, "/data/", false, 2, (Object) null)) {
            str2 = null;
        } else {
            String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
            Intrinsics.checkNotNullExpressionValue(strArr2, "SUPPORTED_64_BIT_ABIS");
            str2 = !(strArr2.length == 0) ? "/system/bin/linker64" : "/system/bin/linker";
        }
        if (str2 != null) {
            strArr = new String[]{str2, str, "-c", command};
        } else {
            strArr = new String[]{str, "-c", command};
        }
        String[] strArr3 = strArr;
        Log.d(TAG, "runInTermux: exec=" + strArr3[0] + " args=" + ArraysKt.drop(strArr3, 1) + " cmd=" + command);
        appendLog$default(this, "$ " + StringsKt.take(command, 300), false, 0L, 6, null);
        if (mutatesPrefix && !armWriterLease()) {
            Log.e(TAG, "runInTermux: cannot arm writer lease; refusing $PREFIX-mutating command: " + command);
            appendLog$default(this, "[exit -1] (cannot persist package-writer safety lease)", false, 0L, 6, null);
            return TuplesKt.to(-1, "cannot persist package-writer safety lease");
        }
        try {
            ProcessBuilder processBuilderRedirectErrorStream = new ProcessBuilder((String[]) Arrays.copyOf(strArr3, strArr3.length)).directory(this.homeDir).redirectErrorStream(true);
            processBuilderRedirectErrorStream.environment().clear();
            for (String str3 : strArrBuild) {
                List listSplit$default = StringsKt.split$default(str3, new String[]{"="}, false, 2, 2, (Object) null);
                if (listSplit$default.size() == 2) {
                    Map<String, String> mapEnvironment = processBuilderRedirectErrorStream.environment();
                    Intrinsics.checkNotNullExpressionValue(mapEnvironment, "environment(...)");
                    mapEnvironment.put(listSplit$default.get(0), listSplit$default.get(1));
                }
            }
            Process processStart = processBuilderRedirectErrorStream.start();
            final StringBuilder sb2 = new StringBuilder();
            final InputStream inputStream = processStart.getInputStream();
            Thread thread = new Thread(new Runnable() { // from class: com.hermes.android.BootstrapManager$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    BootstrapManager.runInTermux$lambda$131(inputStream, sb2, this);
                }
            });
            thread.setDaemon(true);
            thread.start();
            try {
                if (timeoutMs == LocationRequestCompat.PASSIVE_INTERVAL) {
                    iExitValue = processStart.waitFor();
                } else if (processStart.waitFor(timeoutMs, TimeUnit.MILLISECONDS)) {
                    iExitValue = processStart.exitValue();
                } else {
                    Log.w(TAG, "runInTermux timeout after " + timeoutMs + "ms, killing tree: " + command);
                    Intrinsics.checkNotNull(processStart);
                    boolean zKillProcessTreeOnTimeout = killProcessTreeOnTimeout(processStart);
                    if (!zKillProcessTreeOnTimeout) {
                        Companion companion = INSTANCE;
                        if (companion.shouldPoisonOnUnconfirmedDeath(mutatesPrefix)) {
                            companion.markPackageSubsystemPoisoned();
                            appendLog$default(this, "[fatal] a package subprocess could not be confirmed dead after timeout; disabling further package changes until device restart to avoid corruption.", false, 0L, 6, null);
                            Log.e(TAG, "runInTermux: unconfirmed tree death of $PREFIX-mutating command → POISONED (orphan may keep writing $PREFIX; DEVICE RESTART required): " + command);
                            packageSubsystemPoisonedException = new PackageSubsystemPoisonedException("Package writer could not be confirmed dead; device restart required");
                        } else {
                            if (!zKillProcessTreeOnTimeout) {
                                Log.e(TAG, "runInTermux: unconfirmed subprocess tree death (read-only op, no poison): " + command);
                            }
                            packageSubsystemPoisonedException = null;
                        }
                        packageSubsystemPoisonedException2 = packageSubsystemPoisonedException;
                        z = zKillProcessTreeOnTimeout;
                        i = -1;
                    }
                    if (mutatesPrefix && z) {
                        clearWriterLease();
                    }
                    thread.join(2000L);
                    synchronized (sb2) {
                        string = sb2.toString();
                    }
                    Intrinsics.checkNotNullExpressionValue(string, "synchronized(...)");
                    Log.d(TAG, "[" + i + "] " + command);
                    appendLog$default(this, "[exit " + i + "]", false, 0L, 6, null);
                    if (!StringsKt.isBlank(string)) {
                        String str4 = string.length() > 4000 ? "...(truncated)...\n" + StringsKt.takeLast(string, 4000) : string;
                        if (i != 0) {
                            sb = new StringBuilder("Output: ");
                            Log.w(TAG, sb.append(str4).toString());
                        } else {
                            sb = new StringBuilder("Output: ");
                            Log.d(TAG, sb.append(str4).toString());
                        }
                    }
                    if (packageSubsystemPoisonedException2 != null) {
                        throw packageSubsystemPoisonedException2;
                    }
                    return new Pair<>(Integer.valueOf(i), string);
                }
                z = true;
                i = iExitValue;
                packageSubsystemPoisonedException2 = null;
                if (mutatesPrefix) {
                    clearWriterLease();
                }
                thread.join(2000L);
                synchronized (sb2) {
                }
            } finally {
            }
        } catch (Throwable th) {
            if (mutatesPrefix) {
                clearWriterLease();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runInTermux$lambda$131(InputStream inputStream, StringBuilder sb, BootstrapManager bootstrapManager) {
        StringBuilder sb2 = new StringBuilder();
        byte[] bArr = new byte[1024];
        boolean z = false;
        while (true) {
            try {
                int i = inputStream.read(bArr);
                if (i < 0) {
                    break;
                }
                boolean z2 = z;
                for (int i2 = 0; i2 < i; i2++) {
                    char c = (char) (bArr[i2] & 255);
                    synchronized (sb) {
                        sb.append(c);
                    }
                    if (c == '\n') {
                        if (sb2.length() > 0) {
                            String string = sb2.toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            appendLog$default(bootstrapManager, string, z2, 0L, 4, null);
                            StringsKt.clear(sb2);
                        }
                        z2 = false;
                    } else if (c == '\r') {
                        if (sb2.length() > 0) {
                            String string2 = sb2.toString();
                            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                            appendLog$default(bootstrapManager, string2, z2, 0L, 4, null);
                            StringsKt.clear(sb2);
                        }
                        z2 = true;
                    } else {
                        sb2.append(c);
                    }
                }
                z = z2;
            } catch (Exception e) {
                Log.w(TAG, "stream read error: " + e.getMessage());
                return;
            }
        }
        if (sb2.length() > 0) {
            String string3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
            appendLog$default(bootstrapManager, string3, z, 0L, 4, null);
        }
    }

    private final boolean killProcessTreeOnTimeout(Process process) {
        boolean z;
        long jPidOf = pidOf(process);
        HashSet hashSet = new HashSet();
        if (jPidOf > 0) {
            hashSet.add(Long.valueOf(jPidOf));
            try {
                sig(jPidOf, 19);
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i >= 8) {
                        break;
                    }
                    List<Long> listCollectDescendants = collectDescendants(jPidOf);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listCollectDescendants) {
                        if (hashSet.add(Long.valueOf(((Number) obj).longValue()))) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = arrayList;
                    if (arrayList2.isEmpty()) {
                        break;
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        sig(((Number) it.next()).longValue(), 19);
                    }
                    i = i2;
                }
                Iterator it2 = CollectionsKt.asReversed(collectDescendants(jPidOf)).iterator();
                while (it2.hasNext()) {
                    sig(((Number) it2.next()).longValue(), 9);
                }
                sig(jPidOf, 9);
            } catch (Throwable th) {
                Log.w(TAG, "tree kill signal phase failed: " + th.getMessage());
            }
        }
        boolean zReapDirectChild = reapDirectChild(process);
        if (jPidOf <= 0) {
            return zReapDirectChild;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() + 15000;
        loop4: while (SystemClock.elapsedRealtime() < jElapsedRealtime) {
            HashSet hashSet2 = hashSet;
            if (!(hashSet2 instanceof Collection) || !hashSet2.isEmpty()) {
                Iterator it3 = hashSet2.iterator();
                while (it3.hasNext()) {
                    if (new File("/proc/" + ((Number) it3.next()).longValue()).exists()) {
                        try {
                            Thread.sleep(100L);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
            z = true;
        }
        z = false;
        if (!z) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : hashSet) {
                if (new File("/proc/" + ((Number) obj2).longValue()).exists()) {
                    arrayList3.add(obj2);
                }
            }
            Log.e(TAG, "FAILED to confirm pip tree death within 15000ms (root=" + jPidOf + ", still alive=" + arrayList3 + "); orphan may keep writing $PREFIX");
        }
        return z && zReapDirectChild;
    }

    private final boolean reapDirectChild(Process process) {
        try {
            if (process.waitFor(15000L, TimeUnit.MILLISECONDS)) {
                return true;
            }
            process.destroyForcibly();
            return process.waitFor(2L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return false;
        }
    }

    private final void sig(long pid, int signal) {
        try {
            Process.sendSignal((int) pid, signal);
        } catch (Throwable unused) {
        }
    }

    private final long pidOf(Process process) {
        try {
            Object objInvoke = Process.class.getMethod("pid", new Class[0]).invoke(process, new Object[0]);
            Long l = objInvoke instanceof Long ? (Long) objInvoke : null;
            if (l != null) {
                return l.longValue();
            }
        } catch (Throwable unused) {
        }
        try {
            Field declaredField = process.getClass().getDeclaredField("pid");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(process);
            Number number = obj instanceof Number ? (Number) obj : null;
            if (number != null) {
                return number.longValue();
            }
            return -1L;
        } catch (Throwable unused2) {
            return -1L;
        }
    }

    private final List<Long> collectDescendants(long root) {
        Long longOrNull;
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = new File("/proc").listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Long longOrNull2 = StringsKt.toLongOrNull(name);
                if (longOrNull2 != null) {
                    long jLongValue = longOrNull2.longValue();
                    try {
                        String str = (String) CollectionsKt.getOrNull(StringsKt.split$default(StringsKt.trim(StringsKt.substringAfterLast$default(FilesKt.readText$default(new File(file, "stat"), (Charset) null, 1, (Object) null), ')', (String) null, 2, (Object) null)).toString(), new String[]{" "}, false, 0, 6, (Object) null), 1);
                        if (str != null && (longOrNull = StringsKt.toLongOrNull(str)) != null) {
                            arrayList.add(TuplesKt.to(Long.valueOf(jLongValue), Long.valueOf(longOrNull.longValue())));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return ProcTree.INSTANCE.descendants(arrayList, root);
    }
}
