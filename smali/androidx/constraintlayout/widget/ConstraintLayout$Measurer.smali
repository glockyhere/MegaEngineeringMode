.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 599
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 601
    return-void
.end method


# virtual methods
.method public final didMeasures()V
    .locals 5

    .line 790
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 791
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 792
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 793
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_0

    .line 794
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 791
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 799
    .local v1, "helperCount":I
    if-lez v1, :cond_2

    .line 800
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 801
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 802
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 800
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 805
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 30
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 608
    return-void

    .line 610
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 611
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 612
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 613
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 614
    return-void

    .line 617
    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 618
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 620
    .local v4, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 621
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 623
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 624
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 626
    .local v9, "verticalSpec":I
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v10

    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    .line 627
    .local v10, "heightPadding":I
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v11

    .line 629
    .local v11, "widthPadding":I
    const/4 v12, 0x0

    .line 630
    .local v12, "didHorizontalWrap":Z
    const/4 v13, 0x0

    .line 632
    .local v13, "didVerticalWrap":Z
    sget-object v14, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v15

    aget v14, v14, v15

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v14, v5, :cond_7

    if-eq v14, v15, :cond_6

    const/4 v15, 0x3

    if-eq v14, v15, :cond_5

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    goto :goto_1

    .line 650
    :cond_2
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v14

    const/4 v15, -0x2

    invoke-static {v14, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 652
    const/4 v12, 0x1

    .line 653
    iget v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v14, v5, :cond_3

    move v14, v5

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    .line 654
    .local v14, "shouldDoWrap":Z
    :goto_0
    iget-boolean v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-eqz v15, :cond_8

    if-eqz v14, :cond_4

    if-eqz v14, :cond_8

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-eq v15, v5, :cond_8

    .line 656
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 657
    const/4 v12, 0x0

    goto :goto_1

    .line 645
    .end local v14    # "shouldDoWrap":Z
    :cond_5
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v14

    add-int/2addr v14, v11

    .line 645
    const/4 v15, -0x1

    invoke-static {v5, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 648
    goto :goto_1

    .line 638
    :cond_6
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v14, -0x2

    invoke-static {v5, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 640
    const/4 v12, 0x1

    .line 642
    goto :goto_1

    .line 634
    :cond_7
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 636
    nop

    .line 663
    :cond_8
    :goto_1
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v14

    aget v5, v5, v14

    const/4 v14, 0x1

    if-eq v5, v14, :cond_e

    const/4 v14, 0x2

    if-eq v5, v14, :cond_d

    const/4 v14, 0x3

    if-eq v5, v14, :cond_c

    const/4 v14, 0x4

    if-eq v5, v14, :cond_9

    goto :goto_3

    .line 681
    :cond_9
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v14, -0x2

    invoke-static {v5, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 683
    const/4 v13, 0x1

    .line 684
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    .line 685
    .local v5, "shouldDoWrap":Z
    :goto_2
    iget-boolean v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-eqz v14, :cond_f

    if-eqz v5, :cond_b

    if-eqz v5, :cond_f

    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-eq v14, v15, :cond_f

    .line 687
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 688
    const/4 v13, 0x0

    goto :goto_3

    .line 676
    .end local v5    # "shouldDoWrap":Z
    :cond_c
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v14

    add-int/2addr v14, v10

    .line 676
    const/4 v15, -0x1

    invoke-static {v5, v14, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 679
    goto :goto_3

    .line 669
    :cond_d
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v14, -0x2

    invoke-static {v5, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 671
    const/4 v13, 0x1

    .line 673
    goto :goto_3

    .line 665
    :cond_e
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 667
    nop

    .line 694
    :cond_f
    :goto_3
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_10

    const/4 v5, 0x1

    goto :goto_4

    :cond_10
    const/4 v5, 0x0

    .line 695
    .local v5, "horizontalMatchConstraints":Z
    :goto_4
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_11

    const/4 v14, 0x1

    goto :goto_5

    :cond_11
    const/4 v14, 0x0

    .line 697
    .local v14, "verticalMatchConstraints":Z
    :goto_5
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v15, :cond_13

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_12

    goto :goto_6

    :cond_12
    const/4 v15, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v15, 0x1

    .line 699
    .local v15, "verticalDimensionKnown":Z
    :goto_7
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_15

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_14

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v0, 0x1

    .line 701
    .local v0, "horizontalDimensionKnown":Z
    :goto_9
    const/16 v17, 0x0

    if-eqz v5, :cond_16

    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v18, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_a

    .end local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_16
    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v18    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_17
    const/4 v3, 0x0

    .line 702
    .local v3, "horizontalUseRatio":Z
    :goto_a
    if-eqz v14, :cond_18

    move-object/from16 v19, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v19, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v17

    if-lez v4, :cond_19

    const/4 v4, 0x1

    goto :goto_b

    .end local v19    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_18
    move-object/from16 v19, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v19    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_19
    const/4 v4, 0x0

    .line 704
    .local v4, "verticalUseRatio":Z
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v17

    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    move-object/from16 v6, v17

    check-cast v6, Landroid/view/View;

    .line 705
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v22, v7

    .end local v7    # "verticalDimension":I
    .local v22, "verticalDimension":I
    move-object/from16 v7, v17

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 707
    .local v7, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v17, 0x0

    .line 708
    .local v17, "width":I
    const/16 v23, 0x0

    .line 709
    .local v23, "height":I
    const/16 v24, 0x0

    .line 711
    .local v24, "baseline":I
    move/from16 v25, v10

    .end local v10    # "heightPadding":I
    .local v25, "heightPadding":I
    iget-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    if-nez v10, :cond_1b

    if-eqz v5, :cond_1b

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_1b

    if-eqz v14, :cond_1b

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v29, v3

    move/from16 v26, v5

    move/from16 v27, v11

    move/from16 v3, v17

    move/from16 v11, v23

    move/from16 v5, v24

    const/16 v16, 0x0

    goto/16 :goto_15

    .line 715
    :cond_1b
    :goto_c
    instance-of v10, v6, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v10, :cond_1c

    instance-of v10, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_1c

    .line 716
    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 717
    .local v10, "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    move/from16 v26, v5

    .end local v5    # "horizontalMatchConstraints":Z
    .local v26, "horizontalMatchConstraints":Z
    move-object v5, v6

    check-cast v5, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v5, v10, v8, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 718
    .end local v10    # "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    goto :goto_d

    .line 715
    .end local v26    # "horizontalMatchConstraints":Z
    .restart local v5    # "horizontalMatchConstraints":Z
    :cond_1c
    move/from16 v26, v5

    .line 719
    .end local v5    # "horizontalMatchConstraints":Z
    .restart local v26    # "horizontalMatchConstraints":Z
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    .line 722
    :goto_d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 723
    .local v5, "w":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 724
    .local v10, "h":I
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v24

    .line 726
    move/from16 v27, v5

    .line 727
    .end local v17    # "width":I
    .local v27, "width":I
    move/from16 v17, v10

    .line 729
    .end local v23    # "height":I
    .local v17, "height":I
    if-eqz v12, :cond_1d

    .line 730
    move/from16 v23, v8

    .end local v8    # "horizontalSpec":I
    .local v23, "horizontalSpec":I
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v8, v16

    goto :goto_e

    .line 729
    .end local v23    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :cond_1d
    move/from16 v23, v8

    const/16 v16, 0x0

    .line 732
    .end local v8    # "horizontalSpec":I
    .restart local v23    # "horizontalSpec":I
    :goto_e
    if-eqz v13, :cond_1e

    .line 733
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v21, 0x1

    aput v10, v8, v21

    .line 736
    :cond_1e
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_1f

    .line 737
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v28, v9

    move/from16 v9, v27

    .end local v27    # "width":I
    .local v9, "width":I
    .local v28, "verticalSpec":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v9, v27

    .end local v9    # "width":I
    .restart local v27    # "width":I
    goto :goto_f

    .line 736
    .end local v28    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_1f
    move/from16 v28, v9

    move/from16 v9, v27

    .line 739
    .end local v27    # "width":I
    .local v9, "width":I
    .restart local v28    # "verticalSpec":I
    :goto_f
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v8, :cond_20

    .line 740
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 742
    :cond_20
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v8, :cond_21

    .line 743
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v27, v11

    move/from16 v11, v17

    .end local v17    # "height":I
    .local v11, "height":I
    .local v27, "widthPadding":I
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v11, v17

    .end local v11    # "height":I
    .restart local v17    # "height":I
    goto :goto_10

    .line 742
    .end local v27    # "widthPadding":I
    .local v11, "widthPadding":I
    :cond_21
    move/from16 v27, v11

    move/from16 v11, v17

    .line 745
    .end local v17    # "height":I
    .local v11, "height":I
    .restart local v27    # "widthPadding":I
    :goto_10
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v8, :cond_22

    .line 746
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 749
    :cond_22
    if-eqz v3, :cond_23

    if-eqz v15, :cond_23

    .line 750
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 751
    .local v8, "ratio":F
    move/from16 v29, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v29, "horizontalUseRatio":Z
    int-to-float v3, v11

    mul-float/2addr v3, v8

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    .line 752
    .end local v8    # "ratio":F
    .end local v9    # "width":I
    .local v3, "width":I
    move v9, v3

    goto :goto_11

    .line 749
    .end local v29    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_23
    move/from16 v29, v3

    .line 752
    .end local v3    # "horizontalUseRatio":Z
    .restart local v29    # "horizontalUseRatio":Z
    if-eqz v4, :cond_24

    if-eqz v0, :cond_24

    .line 753
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 754
    .local v3, "ratio":F
    int-to-float v8, v9

    div-float/2addr v8, v3

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v8, v8, v17

    float-to-int v8, v8

    move v11, v8

    .line 757
    .end local v3    # "ratio":F
    :cond_24
    :goto_11
    if-ne v5, v9, :cond_26

    if-eq v10, v11, :cond_25

    goto :goto_12

    :cond_25
    move v3, v9

    move/from16 v8, v23

    move/from16 v5, v24

    move/from16 v9, v28

    goto :goto_15

    .line 758
    :cond_26
    :goto_12
    if-eq v5, v9, :cond_27

    .line 759
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .end local v23    # "horizontalSpec":I
    .local v8, "horizontalSpec":I
    goto :goto_13

    .line 758
    .end local v8    # "horizontalSpec":I
    .restart local v23    # "horizontalSpec":I
    :cond_27
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v8, v23

    .line 761
    .end local v23    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :goto_13
    if-eq v10, v11, :cond_28

    .line 762
    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v28    # "verticalSpec":I
    .local v3, "verticalSpec":I
    goto :goto_14

    .line 761
    .end local v3    # "verticalSpec":I
    .restart local v28    # "verticalSpec":I
    :cond_28
    move/from16 v3, v28

    .line 764
    .end local v28    # "verticalSpec":I
    .restart local v3    # "verticalSpec":I
    :goto_14
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 765
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 766
    .end local v9    # "width":I
    .local v17, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 767
    .end local v11    # "height":I
    .local v23, "height":I
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v24

    move v9, v3

    move/from16 v3, v17

    move/from16 v11, v23

    move/from16 v5, v24

    .line 772
    .end local v10    # "h":I
    .end local v17    # "width":I
    .end local v23    # "height":I
    .end local v24    # "baseline":I
    .local v3, "width":I
    .local v5, "baseline":I
    .local v9, "verticalSpec":I
    .restart local v11    # "height":I
    :goto_15
    const/4 v10, -0x1

    if-eq v5, v10, :cond_29

    const/4 v10, 0x1

    goto :goto_16

    :cond_29
    move/from16 v10, v16

    .line 774
    .local v10, "hasBaseline":Z
    :goto_16
    move/from16 v17, v0

    .end local v0    # "horizontalDimensionKnown":Z
    .local v17, "horizontalDimensionKnown":Z
    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v3, v0, :cond_2b

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v11, v0, :cond_2a

    goto :goto_17

    :cond_2a
    move/from16 v0, v16

    goto :goto_18

    :cond_2b
    :goto_17
    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 776
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_2c

    .line 777
    const/4 v10, 0x1

    .line 779
    :cond_2c
    if-eqz v10, :cond_2d

    const/4 v0, -0x1

    if-eq v5, v0, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v0, v5, :cond_2d

    .line 780
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 782
    :cond_2d
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 783
    iput v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 784
    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 785
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 786
    return-void
.end method
