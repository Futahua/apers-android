package com.hermes.android;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WheelInstaller.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001e\u0010\u0006\u001a\u001a\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\b0\t0\u0007¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\r\u001a\u0004\u0018\u00010\bJ\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u001e\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0010J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0006\u001a\u001a\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\b0\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/hermes/android/WheelInstaller;", "", "context", "Landroid/content/Context;", "homeDir", "Ljava/io/File;", "runner", "Lkotlin/Function1;", "", "Lkotlin/Pair;", "", "<init>", "(Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V", "detectArch", "extractWheels", "installFromLocal", "", "packages", "", "force", "listBundled", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WheelInstaller {
    private static final String ASSET_ROOT = "wheels";
    private static final String TAG = "WheelInstaller";
    private final Context context;
    private final File homeDir;
    private final Function1<String, Pair<Integer, String>> runner;
    public static final int $stable = 8;
    private static final Map<String, String> ABI_TO_ARCH = MapsKt.mapOf(new Pair[]{TuplesKt.to("arm64-v8a", "aarch64"), TuplesKt.to("x86_64", "x86_64")});

    /* JADX WARN: Multi-variable type inference failed */
    public WheelInstaller(Context context, File file, Function1<? super String, Pair<Integer, String>> function1) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "homeDir");
        Intrinsics.checkNotNullParameter(function1, "runner");
        this.context = context;
        this.homeDir = file;
        this.runner = function1;
    }

    public final String detectArch() {
        Iterator it = ArrayIteratorKt.iterator(Build.SUPPORTED_ABIS);
        while (it.hasNext()) {
            String str = ABI_TO_ARCH.get((String) it.next());
            if (str != null) {
                return str;
            }
        }
        String[] strArr = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(strArr, "SUPPORTED_ABIS");
        Log.w(TAG, "No supported ABI match: " + ArraysKt.joinToString$default(strArr, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null));
        return null;
    }

    public final File extractWheels() {
        String strDetectArch = detectArch();
        if (strDetectArch == null) {
            return null;
        }
        String str = "wheels/" + strDetectArch;
        try {
            String[] list = this.context.getAssets().list(str);
            if (list == null) {
                list = new String[0];
            }
            ArrayList arrayList = new ArrayList();
            for (String str2 : list) {
                Intrinsics.checkNotNull(str2);
                if (StringsKt.endsWith$default(str2, ".whl", false, 2, (Object) null)) {
                    arrayList.add(str2);
                }
            }
            ArrayList<String> arrayList2 = arrayList;
            if (arrayList2.isEmpty()) {
                Log.d(TAG, "No bundled wheels for arch=" + strDetectArch);
                return null;
            }
            File file = new File(this.homeDir, ".hermes-android/wheels");
            file.mkdirs();
            for (String str3 : arrayList2) {
                File file2 = new File(file, str3);
                if (!file2.exists() || file2.length() <= 0) {
                    try {
                        FileOutputStream fileOutputStreamOpen = this.context.getAssets().open(str + "/" + str3);
                        try {
                            InputStream inputStream = fileOutputStreamOpen;
                            fileOutputStreamOpen = new FileOutputStream(file2);
                            try {
                                Intrinsics.checkNotNull(inputStream);
                                ByteStreamsKt.copyTo$default(inputStream, fileOutputStreamOpen, 0, 2, (Object) null);
                                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                                CloseableKt.closeFinally(fileOutputStreamOpen, (Throwable) null);
                                Log.d(TAG, "Extracted wheel: " + str3 + " (" + file2.length() + " bytes)");
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        } finally {
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "Extract wheel failed: " + str3, e);
                    }
                }
            }
            return file;
        } catch (Exception e2) {
            Log.w(TAG, "List assets failed: " + str, e2);
            return null;
        }
    }

    public static /* synthetic */ boolean installFromLocal$default(WheelInstaller wheelInstaller, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return wheelInstaller.installFromLocal(list, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean installFromLocal(List<String> packages, boolean force) {
        Set setEmptySet;
        Intrinsics.checkNotNullParameter(packages, "packages");
        File fileExtractWheels = extractWheels();
        if (fileExtractWheels == null) {
            return false;
        }
        File[] fileArrListFiles = fileExtractWheels.listFiles(new FileFilter() { // from class: com.hermes.android.WheelInstaller$$ExternalSyntheticLambda0
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return WheelInstaller.installFromLocal$lambda$5(file);
            }
        });
        if (fileArrListFiles != null) {
            ArrayList arrayList = new ArrayList(fileArrListFiles.length);
            for (File file : fileArrListFiles) {
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                String lowerCase = StringsKt.substringBefore$default(name, "-", (String) null, 2, (Object) null).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                arrayList.add(StringsKt.replace$default(lowerCase, "_", "-", false, 4, (Object) null));
            }
            setEmptySet = CollectionsKt.toSet(arrayList);
            if (setEmptySet == null) {
                setEmptySet = SetsKt.emptySet();
            }
        }
        if (setEmptySet.isEmpty()) {
            Log.d(TAG, "No wheels in " + fileExtractWheels);
            return false;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : packages) {
            String lowerCase2 = ((String) obj).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            if (setEmptySet.contains(StringsKt.replace$default(lowerCase2, "_", "-", false, 4, (Object) null))) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = arrayList2;
        if (arrayList3.isEmpty()) {
            Log.d(TAG, "None of requested packages have local wheels: " + packages);
            return false;
        }
        Log.d(TAG, "Installing from local wheels: " + arrayList3 + " (dir=" + fileExtractWheels + ")");
        Pair pair = (Pair) this.runner.invoke("python3 -m pip install --no-index --no-deps " + (force ? "--force-reinstall " : "") + "--find-links=" + fileExtractWheels.getAbsolutePath() + " " + CollectionsKt.joinToString$default(arrayList3, " ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null) + " 2>&1");
        int iIntValue = ((Number) pair.component1()).intValue();
        String str = (String) pair.component2();
        if (iIntValue == 0) {
            return true;
        }
        Log.w(TAG, "Local wheel install failed (rc=" + iIntValue + "): " + StringsKt.takeLast(str, 1000));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean installFromLocal$lambda$5(File file) {
        Intrinsics.checkNotNull(file);
        return Intrinsics.areEqual(FilesKt.getExtension(file), "whl");
    }

    public final List<String> listBundled() {
        String strDetectArch = detectArch();
        if (strDetectArch == null) {
            return CollectionsKt.emptyList();
        }
        try {
            String[] list = this.context.getAssets().list("wheels/" + strDetectArch);
            if (list == null) {
                list = new String[0];
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                Intrinsics.checkNotNull(str);
                if (StringsKt.endsWith$default(str, ".whl", false, 2, (Object) null)) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return CollectionsKt.emptyList();
        }
    }
}
