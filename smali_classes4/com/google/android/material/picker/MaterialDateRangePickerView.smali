.class public Lcom/google/android/material/picker/MaterialDateRangePickerView;
.super Lcom/google/android/material/picker/MaterialCalendarView;
.source "MaterialDateRangePickerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/picker/MaterialCalendarView<",
        "Landroid/util/Pair<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEF_STYLE_ATTR:I

.field private static final emptyColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final endColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final rangeColor:Landroid/graphics/drawable/ColorDrawable;

.field private static final startColor:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private final onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private selectedEndPosition:I

.field private selectedStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget v0, Lcom/google/android/material/R$attr;->materialDateRangePickerStyle:I

    sput v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->DEF_STYLE_ATTR:I

    .line 44
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->emptyColor:Landroid/graphics/drawable/ColorDrawable;

    .line 45
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->startColor:Landroid/graphics/drawable/ColorDrawable;

    .line 46
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff0100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->endColor:Landroid/graphics/drawable/ColorDrawable;

    .line 47
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->rangeColor:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    sget v0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->DEF_STYLE_ATTR:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    .line 51
    iput v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    .line 63
    new-instance v0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;-><init>(Lcom/google/android/material/picker/MaterialDateRangePickerView;)V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialDateRangePickerView;

    .line 40
    iget v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialDateRangePickerView;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialDateRangePickerView;

    .line 40
    iget v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/picker/MaterialDateRangePickerView;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    return p1
.end method


# virtual methods
.method protected drawSelection(Landroid/widget/AdapterView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 91
    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->emptyColor:Landroid/graphics/drawable/ColorDrawable;

    .line 92
    .local v1, "setColor":Landroid/graphics/drawable/ColorDrawable;
    iget v2, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    if-ne v0, v2, :cond_0

    .line 93
    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->startColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    .line 94
    :cond_0
    iget v3, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    if-ne v0, v3, :cond_1

    .line 95
    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->endColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_1

    .line 96
    :cond_1
    if-le v0, v2, :cond_2

    if-ge v0, v3, :cond_2

    .line 97
    sget-object v1, Lcom/google/android/material/picker/MaterialDateRangePickerView;->rangeColor:Landroid/graphics/drawable/ColorDrawable;

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 90
    .end local v1    # "setColor":Landroid/graphics/drawable/ColorDrawable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public getEnd()Ljava/util/Calendar;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedEndPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getSelection()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getStart()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "start":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getEnd()Ljava/util/Calendar;

    move-result-object v1

    .line 108
    .local v1, "end":Ljava/util/Calendar;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getStart()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getEnd()Ljava/util/Calendar;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 109
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getSelection()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Ljava/util/Calendar;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView;->selectedStartPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
