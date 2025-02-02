.class public Lcom/google/android/setupcompat/template/SystemNavBarMixin;
.super Ljava/lang/Object;
.source "SystemNavBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field final applyPartnerResources:Z

.field private sucSystemNavBarBackgroundColor:I

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final windowOfActivity:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V
    .locals 2
    .param p1, "layout"    # Lcom/google/android/setupcompat/internal/TemplateLayout;
    .param p2, "window"    # Landroid/view/Window;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    .line 59
    iput-object p1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 60
    iput-object p2, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 61
    instance-of v1, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    .line 64
    return-void
.end method


# virtual methods
.method public applyPartnerCustomizations(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin:[I

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin_sucSystemNavBarBackgroundColor:I

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setSystemNavBarBackground(I)V

    .line 83
    sget v1, Lcom/google/android/setupcompat/R$styleable;->SucSystemNavBarMixin_sucLightSystemNavBar:I

    .line 85
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->isLightSystemNavBar()Z

    move-result v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->setLightSystemNavBar(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public getSystemNavBarBackground()I
    .locals 2

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    return v0

    .line 113
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public hideSystemBars(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 171
    const/16 v0, 0x1602

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 172
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public isLightSystemNavBar()Z
    .locals 3

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 157
    :cond_1
    return v1
.end method

.method public setLightSystemNavBar(Z)V
    .locals 4
    .param p1, "isLight"    # Z

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 125
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    nop

    .line 128
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p1

    .line 131
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 133
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 135
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 139
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    .line 141
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 145
    :cond_2
    :goto_0
    return-void
.end method

.method public setSystemNavBarBackground(I)V
    .locals 3
    .param p1, "color"    # I

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    nop

    .line 101
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 102
    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p1

    .line 104
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->windowOfActivity:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 106
    :cond_1
    return-void
.end method

.method public showSystemBars(Landroid/view/Window;Landroid/content/Context;)V
    .locals 5
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "context"    # Landroid/content/Context;

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 190
    const/16 v0, 0x1602

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    .line 191
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    .line 194
    if-eqz p2, :cond_3

    .line 195
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->applyPartnerResources:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    nop

    .line 197
    invoke-static {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 198
    invoke-virtual {v0, p2, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 199
    .local v0, "partnerNavigationBarColor":I
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 201
    .end local v0    # "partnerNavigationBarColor":I
    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 204
    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 207
    .local v2, "statusBarColor":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 208
    .local v1, "navigationBarColor":I
    iget-object v3, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    instance-of v3, v3, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz v3, :cond_2

    .line 209
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 210
    const/4 v2, 0x0

    .line 212
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_2

    .line 213
    iget v1, p0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;->sucSystemNavBarBackgroundColor:I

    .line 216
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local v1    # "navigationBarColor":I
    .end local v2    # "statusBarColor":I
    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1010451
        0x1010452
    .end array-data
.end method
