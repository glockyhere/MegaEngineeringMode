.class Lcom/google/android/material/bottomappbar/BottomAppBar$4$1;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$4;->onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/bottomappbar/BottomAppBar$4;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    .line 528
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$4$1;->this$1:Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 531
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$4$1;->this$1:Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 532
    return-void
.end method
