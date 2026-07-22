package com.hermes.android;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BootstrapManager.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0018\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b0\u00052\u0006\u0010\t\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Lcom/hermes/android/ProcTree;", "", "<init>", "()V", "descendants", "", "", "edges", "Lkotlin/Pair;", "root", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProcTree {
    public static final int $stable = 0;
    public static final ProcTree INSTANCE = new ProcTree();

    private ProcTree() {
    }

    public final List<Long> descendants(List<Pair<Long, Long>> edges, long root) {
        Intrinsics.checkNotNullParameter(edges, "edges");
        HashMap map = new HashMap();
        for (Pair<Long, Long> pair : edges) {
            long jLongValue = ((Number) pair.component1()).longValue();
            long jLongValue2 = ((Number) pair.component2()).longValue();
            HashMap map2 = map;
            Long lValueOf = Long.valueOf(jLongValue2);
            Object obj = map2.get(lValueOf);
            if (obj == null) {
                obj = (List) new ArrayList();
                map2.put(lValueOf, obj);
            }
            ((List) obj).add(Long.valueOf(jLongValue));
        }
        ArrayList arrayList = new ArrayList();
        Collection arrayDeque = new ArrayDeque();
        arrayDeque.add(Long.valueOf(root));
        HashSet hashSet = new HashSet();
        hashSet.add(Long.valueOf(root));
        while (!arrayDeque.isEmpty()) {
            List list = (List) map.get(arrayDeque.removeFirst());
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    long jLongValue3 = ((Number) it.next()).longValue();
                    if (hashSet.add(Long.valueOf(jLongValue3))) {
                        arrayList.add(Long.valueOf(jLongValue3));
                        arrayDeque.add(Long.valueOf(jLongValue3));
                    }
                }
            }
        }
        return arrayList;
    }
}
