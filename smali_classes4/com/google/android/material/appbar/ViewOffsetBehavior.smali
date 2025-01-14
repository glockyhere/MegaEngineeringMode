.class Lcom/google/android/material/appbar/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private tempLeftRightOffset:I

.field private tempTopBottomOffset:I

.field private viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 30
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 30
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 36
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .line 89
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 85
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .locals 1

    .line 109
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->isHorizontalOffsetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .locals 1

    .line 99
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->isVerticalOffsetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 43
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v0, p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 47
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 49
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 51
    iput v1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 53
    :cond_1
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    if-eqz v0, :cond_2

    .line 54
    iget-object v2, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 55
    iput v1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 58
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .locals 1
    .param p1, "horizontalOffsetEnabled"    # Z

    .line 103
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setHorizontalOffsetEnabled(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 76
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0

    .line 79
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 67
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0

    .line 70
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setVerticalOffsetEnabled(Z)V
    .locals 1
    .param p1, "verticalOffsetEnabled"    # Z

    .line 93
    .local p0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setVerticalOffsetEnabled(Z)V

    .line 96
    :cond_0
    return-void
.end method
