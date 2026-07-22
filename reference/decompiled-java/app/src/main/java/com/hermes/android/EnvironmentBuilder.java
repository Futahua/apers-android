package com.hermes.android;

import android.content.Context;
import java.io.File;
import java.io.FileFilter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: EnvironmentBuilder.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¨\u0006\f"}, d2 = {"Lcom/hermes/android/EnvironmentBuilder;", "", "<init>", "()V", "build", "", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)[Ljava/lang/String;", "resolveCaBundle", "prefixDir", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EnvironmentBuilder {
    public static final int $stable = 0;
    public static final EnvironmentBuilder INSTANCE = new EnvironmentBuilder();

    private EnvironmentBuilder() {
    }

    public final String[] build(Context context) {
        Object next;
        Intrinsics.checkNotNullParameter(context, "context");
        String absolutePath = context.getFilesDir().getAbsolutePath();
        String str = absolutePath + "/usr";
        String str2 = absolutePath + "/home";
        String str3 = absolutePath + "/tmp";
        new File(str3).mkdirs();
        new File(str2).mkdirs();
        HermesPaths.INSTANCE.hermesHome(str2).mkdirs();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("PREFIX", str);
        linkedHashMap.put("HOME", str2);
        linkedHashMap.put("TMPDIR", str3);
        linkedHashMap.put("TERM", "xterm-256color");
        linkedHashMap.put("COLORTERM", "truecolor");
        linkedHashMap.put("LANG", "en_US.UTF-8");
        linkedHashMap.put("PATH", CollectionsKt.joinToString$default(CollectionsKt.listOf(new String[]{str2 + "/.hermes-android/bin", str + "/bin", str + "/bin/applets"}), ":", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
        linkedHashMap.put("LD_LIBRARY_PATH", str + "/lib");
        linkedHashMap.put("TERMUX__PREFIX", str);
        linkedHashMap.put("TERMUX_PREFIX", str);
        linkedHashMap.put("TERMUX__ROOTFS", absolutePath);
        linkedHashMap.put("TERMUX_APP__DATA_DIR", context.getApplicationInfo().dataDir);
        linkedHashMap.put("TERMUX_APP__LEGACY_DATA_DIR", "/data/data/com.termux");
        linkedHashMap.put("TERMUX_EXEC__SYSTEM_LINKER_EXEC__MODE", "enable");
        Iterator it = CollectionsKt.listOf(new String[]{str + "/lib/libtermux-exec.so", str + "/lib/libtermux-exec-ld-preload.so"}).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (new File((String) next).exists()) {
                break;
            }
        }
        String str4 = (String) next;
        if (str4 != null) {
            linkedHashMap.put("LD_PRELOAD", str4);
        }
        linkedHashMap.put("APT_CONFIG", str + "/etc/apt/apt.conf");
        linkedHashMap.put("DPKG_ADMINDIR", str + "/var/lib/dpkg");
        linkedHashMap.put("DPKG_DATADIR", str + "/share/dpkg");
        linkedHashMap.put("DPKG_ROOT", str);
        linkedHashMap.put("DPKG_CONFDIR", str + "/etc/dpkg");
        String strResolveCaBundle = resolveCaBundle(str);
        if (strResolveCaBundle != null) {
            linkedHashMap.put("SSL_CERT_FILE", strResolveCaBundle);
            linkedHashMap.put("CURL_CA_BUNDLE", strResolveCaBundle);
        }
        linkedHashMap.put("GIT_CONFIG_NOSYSTEM", "1");
        linkedHashMap.put("GIT_EXEC_PATH", str + "/libexec/git-core");
        linkedHashMap.put("GIT_TEMPLATE_DIR", str + "/share/git-core/templates");
        if (strResolveCaBundle != null) {
            linkedHashMap.put("GIT_SSL_CAINFO", strResolveCaBundle);
        } else {
            linkedHashMap.put("GIT_SSL_NO_VERIFY", "1");
        }
        linkedHashMap.put("ANDROID_DATA", "/data");
        linkedHashMap.put("ANDROID_ROOT", "/system");
        linkedHashMap.put("HERMES_HOME", HermesPaths.INSTANCE.hermesHome(str2).getAbsolutePath());
        linkedHashMap.put("HERMES_PLATFORM", "android-termux");
        linkedHashMap.put("HERMES_NO_DOCKER", "1");
        linkedHashMap.put("HERMES_NO_BROWSER", "1");
        linkedHashMap.put("SHELL", str + "/bin/bash");
        File file = new File(str2 + "/.hermes-android/.env-keys");
        if (file.exists()) {
            Iterator it2 = FilesKt.readLines$default(file, (Charset) null, 1, (Object) null).iterator();
            while (it2.hasNext()) {
                String string = StringsKt.trim((String) it2.next()).toString();
                String str5 = string;
                if (str5.length() > 0 && !StringsKt.startsWith$default(string, "#", false, 2, (Object) null) && StringsKt.contains$default(str5, "=", false, 2, (Object) null)) {
                    List listSplit$default = StringsKt.split$default(str5, new String[]{"="}, false, 2, 2, (Object) null);
                    linkedHashMap.put(StringsKt.trim((String) listSplit$default.get(0)).toString(), StringsKt.trim((String) listSplit$default.get(1)).toString());
                }
            }
        }
        File file2 = new File(HermesPaths.INSTANCE.hermesHome(str2), ".env");
        if (file2.exists()) {
            Iterator it3 = FilesKt.readLines$default(file2, (Charset) null, 1, (Object) null).iterator();
            while (it3.hasNext()) {
                String string2 = StringsKt.trim((String) it3.next()).toString();
                String str6 = string2;
                if (str6.length() > 0 && !StringsKt.startsWith$default(string2, "#", false, 2, (Object) null) && StringsKt.contains$default(str6, "=", false, 2, (Object) null)) {
                    List listSplit$default2 = StringsKt.split$default(str6, new String[]{"="}, false, 2, 2, (Object) null);
                    linkedHashMap.put(StringsKt.trim((String) listSplit$default2.get(0)).toString(), StringsKt.trim((String) listSplit$default2.get(1)).toString());
                }
            }
        }
        linkedHashMap.put("HERMES_DISABLE_LAZY_INSTALLS", "1");
        linkedHashMap.remove("HERMES_LAZY_INSTALL_TARGET");
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(entry.getKey() + "=" + entry.getValue());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private final String resolveCaBundle(String prefixDir) {
        List<File> listSortedWith;
        File file = new File(prefixDir + "/etc/tls/cert.pem");
        if (file.isFile()) {
            return file.getAbsolutePath();
        }
        File file2 = new File(prefixDir + "/lib");
        if (!file2.isDirectory()) {
            return null;
        }
        List listListOf = CollectionsKt.listOf(new String[]{"site-packages/certifi/cacert.pem", "site-packages/pip/_vendor/certifi/cacert.pem"});
        File[] fileArrListFiles = file2.listFiles(new FileFilter() { // from class: com.hermes.android.EnvironmentBuilder$$ExternalSyntheticLambda0
            @Override // java.io.FileFilter
            public final boolean accept(File file3) {
                return EnvironmentBuilder.resolveCaBundle$lambda$5(file3);
            }
        });
        if (fileArrListFiles != null && (listSortedWith = ArraysKt.sortedWith(fileArrListFiles, new Comparator() { // from class: com.hermes.android.EnvironmentBuilder$resolveCaBundle$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((File) t2).getName(), ((File) t).getName());
            }
        })) != null) {
            for (File file3 : listSortedWith) {
                Iterator it = listListOf.iterator();
                while (it.hasNext()) {
                    File file4 = new File(file3, (String) it.next());
                    if (file4.isFile()) {
                        return file4.getAbsolutePath();
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean resolveCaBundle$lambda$5(File file) {
        if (!file.isDirectory()) {
            return false;
        }
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt.startsWith$default(name, "python3", false, 2, (Object) null);
    }
}
