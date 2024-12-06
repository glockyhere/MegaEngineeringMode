.class public final Lcom/google/android/setupdesign/util/PartnerStyleHelper;
.super Ljava/lang/Object;
.source "PartnerStyleHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutGravity(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    nop

    .line 35
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_GRAVITY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "gravity":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    return v1

    .line 39
    :cond_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x514d33ab

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x68ac462

    if-eq v4, v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v4, "start"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v6

    goto :goto_0

    :cond_3
    const-string v4, "center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    .line 45
    return v1

    .line 43
    :cond_4
    const v1, 0x800003

    return v1

    .line 41
    :cond_5
    const/16 v1, 0x11

    return v1
.end method

.method public static isPartnerHeavyThemeLayout(Landroid/widget/FrameLayout;)Z
    .locals 2
    .param p0, "layout"    # Landroid/widget/FrameLayout;

    .line 51
    instance-of v0, p0, Lcom/google/android/setupdesign/GlifLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    return v1

    .line 54
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    return v1

    .line 57
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
