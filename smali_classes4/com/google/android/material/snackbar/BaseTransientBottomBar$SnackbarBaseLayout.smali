.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SnackbarBaseLayout"
.end annotation


# static fields
.field private static final consumeAllTouchListener:Landroid/view/View$OnTouchListener;


# instance fields
.field private final actionTextColorAlpha:F

.field private animationMode:I

.field private final backgroundOverlayColorAlpha:F

.field private onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 907
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 924
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 925
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 928
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->createThemedContext(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 931
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 932
    sget-object v1, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 933
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    .line 935
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 934
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 937
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_animationMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    .line 938
    sget v0, Lcom/google/android/material/R$styleable;->SnackbarLayout_backgroundOverlayColorAlpha:I

    .line 939
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundOverlayColorAlpha:F

    .line 940
    sget v0, Lcom/google/android/material/R$styleable;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->actionTextColorAlpha:F

    .line 941
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 943
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 944
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setFocusable(Z)V

    .line 945
    return-void
.end method


# virtual methods
.method getActionTextColorAlpha()F
    .locals 1

    .line 1004
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->actionTextColorAlpha:F

    return v0
.end method

.method getAnimationMode()I
    .locals 1

    .line 992
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    return v0
.end method

.method getBackgroundOverlayColorAlpha()F
    .locals 1

    .line 1000
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundOverlayColorAlpha:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 964
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 965
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 969
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 970
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 974
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 975
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 976
    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 978
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 956
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 957
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 958
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 960
    :cond_0
    return-void
.end method

.method setAnimationMode(I)V
    .locals 0
    .param p1, "animationMode"    # I

    .line 996
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    .line 997
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 987
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 988
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 950
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 951
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    return-void
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "onLayoutChangeListener"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 982
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 983
    return-void
.end method
