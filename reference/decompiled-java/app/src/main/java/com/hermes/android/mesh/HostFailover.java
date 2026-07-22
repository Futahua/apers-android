package com.hermes.android.mesh;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HostFailover.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JH\u0010\u0004\u001a\u0002H\u0005\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u0002H\u00050\nH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"Lcom/hermes/android/mesh/HostFailover;", BuildConfig.FLAVOR, "<init>", "()V", "tryHosts", "T", "hosts", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "block", "Lkotlin/Function1;", "Lkotlin/ParameterName;", AppMeasurementSdk.ConditionalUserProperty.NAME, "host", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HostFailover {
    public static final int $stable = 0;
    public static final HostFailover INSTANCE = new HostFailover();

    private HostFailover() {
    }

    public final <T> T tryHosts(List<String> hosts, Function1<? super String, ? extends T> block) throws IOException {
        Intrinsics.checkNotNullParameter(hosts, "hosts");
        Intrinsics.checkNotNullParameter(block, "block");
        Iterator<String> it = hosts.iterator();
        IOException e = null;
        while (it.hasNext()) {
            try {
                return (T) block.invoke(it.next());
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }
}
