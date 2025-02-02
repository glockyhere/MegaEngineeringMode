.class public Lcom/google/android/material/picker/MonthInYearAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthInYearAdapter.java"


# static fields
.field private static final MAXIMUM_WEEKS:I


# instance fields
.field private final monthInYear:Lcom/google/android/material/picker/MonthInYear;

.field private final textViewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/MonthInYear;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "monthInYear"    # Lcom/google/android/material/picker/MonthInYear;

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    .line 48
    invoke-static {p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveMinimumAccessibleTouchTarget(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    .line 49
    return-void
.end method


# virtual methods
.method public firstPositionInMonth()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v0, v0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    sget v1, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/util/Calendar;
    .locals 2
    .param p1, "position"    # I

    .line 62
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->positionToDay(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MonthInYear;->getDay(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 71
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v0, v0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    div-int v0, p1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 87
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, "day":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 89
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 90
    iget v1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->firstPositionInMonth()I

    move-result v1

    sub-int v1, p1, v1

    .line 93
    .local v1, "offsetPosition":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v2, v2, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_1
    return-object v0
.end method

.method public lastPositionInMonth()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget v1, v1, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public positionToDay(I)I
    .locals 1
    .param p1, "position"    # I

    .line 132
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public withinMonth(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->lastPositionInMonth()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
