.class Lcom/google/android/material/tabs/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout;->wrapOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 793
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$1;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 806
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 807
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 796
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 797
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 801
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$1;->val$baseListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 802
    return-void
.end method
