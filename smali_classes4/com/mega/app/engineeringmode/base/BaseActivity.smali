.class public Lcom/mega/app/engineeringmode/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addNavigationBar()V
    .locals 2

    .line 30
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Lcom/mega/app/engineeringmode/base/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/base/BaseActivity$1;-><init>(Lcom/mega/app/engineeringmode/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 42
    const v0, 0x7f0901b3

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    .local v0, "tv":Landroid/widget/TextView;
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->addNavigationBar()V

    .line 26
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->handleIntent(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
