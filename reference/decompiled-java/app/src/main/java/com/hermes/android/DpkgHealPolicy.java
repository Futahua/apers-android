package com.hermes.android;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BootstrapManager.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001:\u0004\"#$%B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tJ\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tJ$\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\tJ(\u0010\u001e\u001a\u00020\t2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\t0!¨\u0006&"}, d2 = {"Lcom/hermes/android/DpkgHealPolicy;", "", "<init>", "()V", "classify", "Lcom/hermes/android/DpkgHealPolicy$Action;", "statusLine", "", "isCorePkg", "", "escalateToForceDepends", "dpkgOutput", "shouldRunFixBroken", "markerExists", "didForceRemove", "mayClearFixBrokenMarker", "aptFixRc", "", "rehealOutcome", "Lcom/hermes/android/DpkgHealPolicy$HealOutcome;", "repairResult", "Lcom/hermes/android/DpkgHealPolicy$RepairResult;", "wasPending", "stillPending", "maintenanceSteps", "", "Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;", "repair", "sqliteMissing", "coreDepsPending", "runMaintenance", "steps", "exec", "Lkotlin/Function1;", "Action", "HealOutcome", "RepairResult", "MaintenanceStep", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DpkgHealPolicy {
    public static final int $stable = 0;
    public static final DpkgHealPolicy INSTANCE = new DpkgHealPolicy();

    public final boolean shouldRunFixBroken(boolean markerExists, boolean didForceRemove) {
        return markerExists || didForceRemove;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/DpkgHealPolicy$Action;", "", "<init>", "(Ljava/lang/String;I)V", "NONE", "MARK_INSTALLED", "REMOVE_BROKEN", "KEEP_CORE", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Action {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Action[] $VALUES;
        public static final Action NONE = new Action("NONE", 0);
        public static final Action MARK_INSTALLED = new Action("MARK_INSTALLED", 1);
        public static final Action REMOVE_BROKEN = new Action("REMOVE_BROKEN", 2);
        public static final Action KEEP_CORE = new Action("KEEP_CORE", 3);

        private static final /* synthetic */ Action[] $values() {
            return new Action[]{NONE, MARK_INSTALLED, REMOVE_BROKEN, KEEP_CORE};
        }

        public static EnumEntries<Action> getEntries() {
            return $ENTRIES;
        }

        static {
            Action[] actionArr$values = $values();
            $VALUES = actionArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(actionArr$values);
        }

        private Action(String str, int i) {
        }

        public static Action valueOf(String str) {
            return (Action) Enum.valueOf(Action.class, str);
        }

        public static Action[] values() {
            return (Action[]) $VALUES.clone();
        }
    }

    private DpkgHealPolicy() {
    }

    public final Action classify(String statusLine, boolean isCorePkg) {
        Intrinsics.checkNotNullParameter(statusLine, "statusLine");
        if (Intrinsics.areEqual(statusLine, "Status: install ok half-configured") || Intrinsics.areEqual(statusLine, "Status: install ok unpacked")) {
            return Action.MARK_INSTALLED;
        }
        String str = statusLine;
        if (StringsKt.contains$default(str, "half-installed", false, 2, (Object) null) || StringsKt.contains$default(str, "reinstreq", false, 2, (Object) null)) {
            return isCorePkg ? Action.KEEP_CORE : Action.REMOVE_BROKEN;
        }
        return Action.NONE;
    }

    public final boolean escalateToForceDepends(String dpkgOutput) {
        Intrinsics.checkNotNullParameter(dpkgOutput, "dpkgOutput");
        return StringsKt.contains(dpkgOutput, "depend", true);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/DpkgHealPolicy$HealOutcome;", "", "<init>", "(Ljava/lang/String;I)V", "UNCONFIRMED", "CLEAN", "FORCE_REMOVED", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class HealOutcome {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ HealOutcome[] $VALUES;
        public static final HealOutcome UNCONFIRMED = new HealOutcome("UNCONFIRMED", 0);
        public static final HealOutcome CLEAN = new HealOutcome("CLEAN", 1);
        public static final HealOutcome FORCE_REMOVED = new HealOutcome("FORCE_REMOVED", 2);

        private static final /* synthetic */ HealOutcome[] $values() {
            return new HealOutcome[]{UNCONFIRMED, CLEAN, FORCE_REMOVED};
        }

        public static EnumEntries<HealOutcome> getEntries() {
            return $ENTRIES;
        }

        static {
            HealOutcome[] healOutcomeArr$values = $values();
            $VALUES = healOutcomeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(healOutcomeArr$values);
        }

        private HealOutcome(String str, int i) {
        }

        public static HealOutcome valueOf(String str) {
            return (HealOutcome) Enum.valueOf(HealOutcome.class, str);
        }

        public static HealOutcome[] values() {
            return (HealOutcome[]) $VALUES.clone();
        }
    }

    public final boolean mayClearFixBrokenMarker(int aptFixRc, HealOutcome rehealOutcome) {
        Intrinsics.checkNotNullParameter(rehealOutcome, "rehealOutcome");
        return aptFixRc == 0 && rehealOutcome == HealOutcome.CLEAN;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/DpkgHealPolicy$RepairResult;", "", "<init>", "(Ljava/lang/String;I)V", "NOT_PENDING", "REPAIRED", "DEFERRED", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class RepairResult {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RepairResult[] $VALUES;
        public static final RepairResult NOT_PENDING = new RepairResult("NOT_PENDING", 0);
        public static final RepairResult REPAIRED = new RepairResult("REPAIRED", 1);
        public static final RepairResult DEFERRED = new RepairResult("DEFERRED", 2);

        private static final /* synthetic */ RepairResult[] $values() {
            return new RepairResult[]{NOT_PENDING, REPAIRED, DEFERRED};
        }

        public static EnumEntries<RepairResult> getEntries() {
            return $ENTRIES;
        }

        static {
            RepairResult[] repairResultArr$values = $values();
            $VALUES = repairResultArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(repairResultArr$values);
        }

        private RepairResult(String str, int i) {
        }

        public static RepairResult valueOf(String str) {
            return (RepairResult) Enum.valueOf(RepairResult.class, str);
        }

        public static RepairResult[] values() {
            return (RepairResult[]) $VALUES.clone();
        }
    }

    public final RepairResult repairResult(boolean wasPending, boolean stillPending) {
        if (!wasPending) {
            return RepairResult.NOT_PENDING;
        }
        if (stillPending) {
            return RepairResult.DEFERRED;
        }
        return RepairResult.REPAIRED;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BootstrapManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;", "", "<init>", "(Ljava/lang/String;I)V", "SQLITE_APT", "CORE_DEPS_PIP", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class MaintenanceStep {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ MaintenanceStep[] $VALUES;
        public static final MaintenanceStep SQLITE_APT = new MaintenanceStep("SQLITE_APT", 0);
        public static final MaintenanceStep CORE_DEPS_PIP = new MaintenanceStep("CORE_DEPS_PIP", 1);

        private static final /* synthetic */ MaintenanceStep[] $values() {
            return new MaintenanceStep[]{SQLITE_APT, CORE_DEPS_PIP};
        }

        public static EnumEntries<MaintenanceStep> getEntries() {
            return $ENTRIES;
        }

        static {
            MaintenanceStep[] maintenanceStepArr$values = $values();
            $VALUES = maintenanceStepArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(maintenanceStepArr$values);
        }

        private MaintenanceStep(String str, int i) {
        }

        public static MaintenanceStep valueOf(String str) {
            return (MaintenanceStep) Enum.valueOf(MaintenanceStep.class, str);
        }

        public static MaintenanceStep[] values() {
            return (MaintenanceStep[]) $VALUES.clone();
        }
    }

    public final List<MaintenanceStep> maintenanceSteps(RepairResult repair, boolean sqliteMissing, boolean coreDepsPending) {
        Intrinsics.checkNotNullParameter(repair, "repair");
        if (repair == RepairResult.DEFERRED) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        if (sqliteMissing) {
            listCreateListBuilder.add(MaintenanceStep.SQLITE_APT);
        }
        if (coreDepsPending) {
            listCreateListBuilder.add(MaintenanceStep.CORE_DEPS_PIP);
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    public final boolean runMaintenance(List<? extends MaintenanceStep> steps, Function1<? super MaintenanceStep, Boolean> exec) {
        Intrinsics.checkNotNullParameter(steps, "steps");
        Intrinsics.checkNotNullParameter(exec, "exec");
        Iterator<? extends MaintenanceStep> it = steps.iterator();
        while (it.hasNext()) {
            if (!((Boolean) exec.invoke(it.next())).booleanValue()) {
                return false;
            }
        }
        return true;
    }
}
