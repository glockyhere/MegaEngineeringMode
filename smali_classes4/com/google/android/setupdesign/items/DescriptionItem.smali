.class public Lcom/google/android/setupdesign/items/DescriptionItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "DescriptionItem.java"


# instance fields
.field private applyPartnerDescriptionStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    .line 40
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    .line 58
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/DescriptionItem;->shouldApplyPartnerDescriptionStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {v0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;)V

    .line 62
    :cond_0
    return-void
.end method

.method public setApplyPartnerDescriptionStyle(Z)V
    .locals 0
    .param p1, "applyPartnerDescriptionStyle"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/DescriptionItem;->notifyItemChanged()V

    .line 53
    return-void
.end method

.method public shouldApplyPartnerDescriptionStyle()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    return v0
.end method
