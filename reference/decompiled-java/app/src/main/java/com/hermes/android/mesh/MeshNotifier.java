package com.hermes.android.mesh;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.MainActivity;
import com.hermes.android.R;
import com.hermes.android.data.ModelCatalogCache;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MeshNotifier.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/hermes/android/mesh/MeshNotifier;", BuildConfig.FLAVOR, "<init>", "()V", "CHANNEL", BuildConfig.FLAVOR, "notifyResult", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "text", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MeshNotifier {
    public static final int $stable = 0;
    private static final String CHANNEL = "hermes_mesh";
    public static final MeshNotifier INSTANCE = new MeshNotifier();

    private MeshNotifier() {
    }

    public final void notifyResult(Context context, String text) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(new NotificationChannel(CHANNEL, context.getString(R.string.mesh_notif_channel), 3));
            Notification notificationBuild = new Notification.Builder(context, CHANNEL).setContentTitle(context.getString(R.string.mesh_notif_title)).setContentText(StringsKt.take(text, 120)).setStyle(new Notification.BigTextStyle().bigText(StringsKt.take(text, ModelCatalogCache.SUGGESTION_CAP))).setSmallIcon(android.R.drawable.ic_dialog_info).setContentIntent(PendingIntent.getActivity(context, 0, new Intent(context, (Class<?>) MainActivity.class), 67108864)).setAutoCancel(true).build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
            notificationManager.notify(text.hashCode(), notificationBuild);
        } catch (Exception unused) {
        }
    }
}
