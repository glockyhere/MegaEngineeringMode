.class public final Lcom/google/android/setupcompat/util/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;,
        Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;,
        Lcom/google/android/setupcompat/util/SystemBarHelper$WindowInsetsListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_IMMERSIVE_FLAGS:I = 0x1602

.field public static final DIALOG_IMMERSIVE_FLAGS:I = 0x1002

.field private static final PEEK_DECOR_VIEW_RETRIES:I = 0x3

.field private static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "SystemBarHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .line 45
    invoke-static {p0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->getBottomDistance(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "vis"    # I

    .line 107
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$1;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/util/SystemBarHelper$1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    .line 115
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flag"    # I

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 72
    .local v0, "vis":I
    or-int v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/Window;I)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flag"    # I

    .line 77
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    return-void
.end method

.method private static getBottomDistance(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 302
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "callback"    # Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;

    .line 307
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;-><init>(Lcom/google/android/setupcompat/util/SystemBarHelper$1;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;I)V

    .line 308
    return-void
.end method

.method public static hideSystemBars(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 140
    .local v0, "window":Landroid/view/Window;
    invoke-static {v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->temporarilyDisableDialogFocus(Landroid/view/Window;)V

    .line 141
    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 142
    invoke-static {v0, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 149
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static hideSystemBars(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 166
    const/16 v0, 0x1602

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 167
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public static removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "vis"    # I

    .line 118
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$2;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/util/SystemBarHelper$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    .line 126
    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flag"    # I

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 88
    .local v0, "vis":I
    not-int v1, p1

    and-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 89
    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/Window;I)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flag"    # I

    .line 96
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    return-void
.end method

.method public static setBackButtonVisible(Landroid/view/Window;Z)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "visible"    # Z

    .line 217
    const/high16 v0, 0x400000

    if-eqz p1, :cond_0

    .line 218
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 219
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 222
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 224
    :goto_0
    return-void
.end method

.method public static setImeInsetView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 241
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$WindowInsetsListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$WindowInsetsListener;-><init>(Lcom/google/android/setupcompat/util/SystemBarHelper$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 243
    :cond_0
    return-void
.end method

.method public static showSystemBars(Landroid/view/Window;Landroid/content/Context;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 187
    const/16 v0, 0x1602

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 188
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    .line 191
    if-eqz p1, :cond_0

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 197
    .local v2, "statusBarColor":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 198
    .local v1, "navigationBarColor":I
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 199
    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local v1    # "navigationBarColor":I
    .end local v2    # "statusBarColor":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1010451
        0x1010452
    .end array-data
.end method

.method private static temporarilyDisableDialogFocus(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 250
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 256
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/setupcompat/util/SystemBarHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/util/SystemBarHelper$3;-><init>(Landroid/view/Window;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method
