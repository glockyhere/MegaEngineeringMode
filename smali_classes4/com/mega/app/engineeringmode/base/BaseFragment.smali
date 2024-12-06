.class public Lcom/mega/app/engineeringmode/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/mega/app/engineeringmode/base/BaseFragment;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 35
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 40
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 29
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 30
    return-void
.end method
