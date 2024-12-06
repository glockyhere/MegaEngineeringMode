.class Lcom/google/android/material/picker/MaterialCalendarView$1;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialCalendarView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialCalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/picker/MaterialCalendarView;

    .line 75
    .local p0, "this":Lcom/google/android/material/picker/MaterialCalendarView$1;, "Lcom/google/android/material/picker/MaterialCalendarView$1;"
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialCalendarView$1;->this$0:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/google/android/material/picker/MaterialCalendarView$1;, "Lcom/google/android/material/picker/MaterialCalendarView$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendarView$1;->this$0:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendarView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 80
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendarView$1;->this$0:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/MaterialCalendarView;->drawSelection(Landroid/widget/AdapterView;)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendarView$1;->this$0:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendarView;->callOnClick()Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendarView$1;->this$0:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MaterialCalendarView;->performClick()Z

    .line 87
    :goto_0
    return-void
.end method
