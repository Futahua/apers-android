package com.hermes.android.data;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdManager.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u001c\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/hermes/android/data/AdManager;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "proStatus", "Lcom/hermes/android/data/ProStatus;", "<init>", "(Landroid/content/Context;Lcom/hermes/android/data/ProStatus;)V", "interstitialAd", "Lcom/google/android/gms/ads/interstitial/InterstitialAd;", "lastInterstitialTime", BuildConfig.FLAVOR, "initialized", BuildConfig.FLAVOR, "initialize", BuildConfig.FLAVOR, "loadInterstitial", "shouldShowAd", "showInterstitial", "activity", "Landroid/app/Activity;", "onDismissed", "Lkotlin/Function0;", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class AdManager {
    public static final String BANNER_AD_UNIT_ID = "ca-app-pub-1050211242006416/7374603928";
    private static final long COOLDOWN_MS = 300000;
    public static final String INTERSTITIAL_AD_UNIT_ID = "ca-app-pub-1050211242006416/8307352152";
    private static final String TAG = "AdManager";
    private final Context context;
    private boolean initialized;
    private InterstitialAd interstitialAd;
    private long lastInterstitialTime;
    private final ProStatus proStatus;
    public static final int $stable = 8;

    public AdManager(Context context, ProStatus proStatus) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(proStatus, "proStatus");
        this.context = context;
        this.proStatus = proStatus;
    }

    public final void initialize() {
        if (this.initialized) {
            return;
        }
        try {
            MobileAds.initialize(this.context, new OnInitializationCompleteListener() { // from class: com.hermes.android.data.AdManager$$ExternalSyntheticLambda0
                public final void onInitializationComplete(InitializationStatus initializationStatus) {
                    AdManager.initialize$lambda$0(this.f$0, initializationStatus);
                }
            });
        } catch (Exception e) {
            Log.w(TAG, "AdMob init failed: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$0(AdManager adManager, InitializationStatus initializationStatus) {
        Intrinsics.checkNotNullParameter(initializationStatus, "status");
        Log.d(TAG, "MobileAds initialized: " + initializationStatus);
        adManager.initialized = true;
        adManager.loadInterstitial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadInterstitial() {
        if (this.proStatus.isPro()) {
            return;
        }
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        Intrinsics.checkNotNullExpressionValue(adRequestBuild, "build(...)");
        InterstitialAd.load(this.context, INTERSTITIAL_AD_UNIT_ID, adRequestBuild, new InterstitialAdLoadCallback() { // from class: com.hermes.android.data.AdManager.loadInterstitial.1
            public void onAdLoaded(InterstitialAd ad) {
                Intrinsics.checkNotNullParameter(ad, "ad");
                AdManager.this.interstitialAd = ad;
                Log.d(AdManager.TAG, "Interstitial loaded");
            }

            public void onAdFailedToLoad(LoadAdError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                AdManager.this.interstitialAd = null;
                Log.w(AdManager.TAG, "Interstitial load failed: " + error.getMessage());
            }
        });
    }

    public final boolean shouldShowAd() {
        return (this.proStatus.isPro() || this.interstitialAd == null || System.currentTimeMillis() - this.lastInterstitialTime < COOLDOWN_MS) ? false : true;
    }

    public final void showInterstitial(Activity activity, final Function0<Unit> onDismissed) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onDismissed, "onDismissed");
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd == null) {
            onDismissed.invoke();
        } else {
            interstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.hermes.android.data.AdManager.showInterstitial.1
                public void onAdDismissedFullScreenContent() {
                    AdManager.this.interstitialAd = null;
                    AdManager.this.lastInterstitialTime = System.currentTimeMillis();
                    AdManager.this.loadInterstitial();
                    onDismissed.invoke();
                }

                public void onAdFailedToShowFullScreenContent(AdError error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    Log.w(AdManager.TAG, "Interstitial show failed: " + error.getMessage());
                    AdManager.this.interstitialAd = null;
                    AdManager.this.loadInterstitial();
                    onDismissed.invoke();
                }

                public void onAdShowedFullScreenContent() {
                    Log.d(AdManager.TAG, "Interstitial shown");
                }
            });
            interstitialAd.show(activity);
        }
    }
}
