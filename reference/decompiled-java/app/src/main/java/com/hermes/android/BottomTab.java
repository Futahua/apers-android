package com.hermes.android;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.HomeKt;
import androidx.compose.material.icons.filled.SettingsKt;
import androidx.compose.material.icons.filled.TerminalKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/hermes/android/BottomTab;", "", "labelRes", "", "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "<init>", "(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/ImageVector;)V", "getLabelRes", "()I", "getIcon", "()Landroidx/compose/ui/graphics/vector/ImageVector;", "Home", "Terminal", "Settings", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BottomTab {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BottomTab[] $VALUES;
    private final ImageVector icon;
    private final int labelRes;
    public static final BottomTab Home = new BottomTab("Home", 0, R.string.tab_home, HomeKt.getHome(Icons.INSTANCE.getDefault()));
    public static final BottomTab Terminal = new BottomTab("Terminal", 1, R.string.tab_terminal, TerminalKt.getTerminal(Icons.INSTANCE.getDefault()));
    public static final BottomTab Settings = new BottomTab("Settings", 2, R.string.tab_settings, SettingsKt.getSettings(Icons.INSTANCE.getDefault()));

    private static final /* synthetic */ BottomTab[] $values() {
        return new BottomTab[]{Home, Terminal, Settings};
    }

    public static EnumEntries<BottomTab> getEntries() {
        return $ENTRIES;
    }

    private BottomTab(String str, int i, int i2, ImageVector imageVector) {
        this.labelRes = i2;
        this.icon = imageVector;
    }

    public final ImageVector getIcon() {
        return this.icon;
    }

    public final int getLabelRes() {
        return this.labelRes;
    }

    static {
        BottomTab[] bottomTabArr$values = $values();
        $VALUES = bottomTabArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bottomTabArr$values);
    }

    public static BottomTab valueOf(String str) {
        return (BottomTab) Enum.valueOf(BottomTab.class, str);
    }

    public static BottomTab[] values() {
        return (BottomTab[]) $VALUES.clone();
    }
}
