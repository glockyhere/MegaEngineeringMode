.class public Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;
.super Ljava/lang/Object;
.source "TextViewPartnerStyler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/util/TextViewPartnerStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextPartnerConfigs"
.end annotation


# instance fields
.field private final textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textGravity:I

.field private final textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V
    .locals 0
    .param p1, "textColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p2, "textLinkedColorConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p3, "textSizeConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p4, "textFontFamilyConfig"    # Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .param p5, "textGravity"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 95
    iput-object p2, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 96
    iput-object p3, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 97
    iput-object p4, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 98
    iput p5, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    .line 99
    return-void
.end method


# virtual methods
.method public getTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextFontFamilyConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textFontFamilyConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextGravity()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textGravity:I

    return v0
.end method

.method public getTextLinkedColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textLinkedColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public getTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;->textSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method
