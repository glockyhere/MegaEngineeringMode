.class final Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V
    .locals 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textPartnerConfigs"    # Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    .line 35
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 41
    nop

    .line 42
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 44
    .local v1, "textColor":I
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .end local v1    # "textColor":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 50
    nop

    .line 51
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 53
    .local v1, "linkTextColor":I
    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 58
    .end local v1    # "linkTextColor":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 59
    nop

    .line 60
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    .line 62
    .local v1, "textSize":F
    cmpl-float v3, v1, v4

    if-lez v3, :cond_3

    .line 63
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    .end local v1    # "textSize":F
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 68
    nop

    .line 69
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "fontFamilyName":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 72
    .local v2, "font":Landroid/graphics/Typeface;
    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    .end local v1    # "fontFamilyName":Ljava/lang/String;
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->getTextGravity()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    return-void

    .line 36
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    :goto_0
    return-void
.end method
