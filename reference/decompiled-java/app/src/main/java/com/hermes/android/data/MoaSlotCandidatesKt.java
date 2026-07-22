package com.hermes.android.data;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MoaSlotCandidates.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001ah\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\u0018\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\f0\u00012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001¨\u0006\u000f"}, d2 = {"buildSlotCandidates", BuildConfig.FLAVOR, "Lcom/hermes/android/data/SlotCandidate;", "catalog", "Lcom/hermes/android/data/AiProvider;", "hasApiKey", "Lkotlin/Function1;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "oauthConfigured", BuildConfig.FLAVOR, "customProviders", "Lkotlin/Pair;", "referencedByPreset", "Lcom/hermes/android/data/MoaSlot;", "app_release"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MoaSlotCandidatesKt {
    public static /* synthetic */ List buildSlotCandidates$default(List list, Function1 function1, Set set, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            list = AiProvider.INSTANCE.getALL();
        }
        if ((i & 16) != 0) {
            list3 = CollectionsKt.emptyList();
        }
        return buildSlotCandidates(list, function1, set, list2, list3);
    }

    public static final List<SlotCandidate> buildSlotCandidates(List<AiProvider> list, Function1<? super String, Boolean> function1, Set<String> set, List<Pair<String, String>> list2, List<MoaSlot> list3) {
        Intrinsics.checkNotNullParameter(list, "catalog");
        Intrinsics.checkNotNullParameter(function1, "hasApiKey");
        Intrinsics.checkNotNullParameter(set, "oauthConfigured");
        Intrinsics.checkNotNullParameter(list2, "customProviders");
        Intrinsics.checkNotNullParameter(list3, "referencedByPreset");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<AiProvider> it = list.iterator();
        while (true) {
            boolean zContains = false;
            if (!it.hasNext()) {
                break;
            }
            AiProvider next = it.next();
            if (!next.isVirtual() && !next.isCustom() && !StringsKt.isBlank(next.getHermesProvider())) {
                if (next.isOAuth()) {
                    zContains = set.contains(next.getHermesProvider());
                } else if (!StringsKt.isBlank(next.getEnvVar()) && ((Boolean) function1.invoke(next.getEnvVar())).booleanValue()) {
                    zContains = true;
                }
                if (zContains) {
                    linkedHashMap.put(next.getHermesProvider(), new SlotCandidate(next.getHermesProvider(), next.getName(), next.getHermesDefaultModel(), true));
                }
            }
        }
        for (Pair<String, String> pair : list2) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (!StringsKt.isBlank(str)) {
                String lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (!Intrinsics.areEqual(lowerCase, "moa")) {
                    linkedHashMap.putIfAbsent(str, new SlotCandidate(str, str, str2, true));
                }
            }
        }
        for (MoaSlot moaSlot : list3) {
            String string = StringsKt.trim(moaSlot.getProvider()).toString();
            if (!(string.length() == 0)) {
                String lowerCase2 = string.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                if (!Intrinsics.areEqual(lowerCase2, "moa")) {
                    linkedHashMap.putIfAbsent(string, new SlotCandidate(string, string, moaSlot.getModel(), false));
                }
            }
        }
        Collection collectionValues = linkedHashMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        return CollectionsKt.toList(collectionValues);
    }
}
