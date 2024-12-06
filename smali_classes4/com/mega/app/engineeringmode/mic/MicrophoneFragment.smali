.class public Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;
.super Lcom/mega/app/engineeringmode/base/BaseFragment;
.source "MicrophoneFragment.java"


# static fields
.field private static final NEW_LAYOUT:Ljava/lang/String; = "1"

.field private static final OLD_LAYOUT:Ljava/lang/String; = "0"

.field private static final PERSIST_MIC_LAYOUT_PROPERTY:Ljava/lang/String; = "persist.mega.mic_layout"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mMiscLayout:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;

    .line 21
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->switchMicLayout()V

    return-void
.end method

.method private initMicLayout()V
    .locals 3

    .line 67
    const-string v0, "persist.mega.mic_layout"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mMiscLayout:Landroid/widget/Button;

    const v2, 0x7f0e0093

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mMiscLayout:Landroid/widget/Button;

    const v2, 0x7f0e0094

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 73
    :goto_0
    return-void
.end method

.method private switchMicLayout()V
    .locals 4

    .line 55
    const-string v0, "persist.mega.mic_layout"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "layout":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "1"

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mMiscLayout:Landroid/widget/Button;

    const v2, 0x7f0e0094

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0, v3}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mMiscLayout:Landroid/widget/Button;

    const v2, 0x7f0e0093

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0095

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    iget-object v0, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mMiscLayout:Landroid/widget/Button;

    .line 32
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mImageView:Landroid/widget/ImageView;

    .line 33
    const v1, 0x7f0901b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mTextView:Landroid/widget/TextView;

    .line 34
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->initMicLayout()V

    .line 35
    iget-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mMiscLayout:Landroid/widget/Button;

    new-instance v2, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$1;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$1;-><init>(Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$2;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$2;-><init>(Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-object v0
.end method
