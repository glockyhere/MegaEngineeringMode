.class final Landroidx/legacy/app/FragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field final args:Landroid/os/Bundle;

.field final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field fragment:Landroid/app/Fragment;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 62
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 65
    iput-object p3, p0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 66
    return-void
.end method
