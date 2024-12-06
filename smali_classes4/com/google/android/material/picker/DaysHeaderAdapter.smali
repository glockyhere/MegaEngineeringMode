.class public Lcom/google/android/material/picker/DaysHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "DaysHeaderAdapter.java"


# static fields
.field private static final CALENDAR_DAY_STYLE:I

.field private static final NARROW_FORMAT:I = 0x4


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final daysInWeek:I

.field private final firstDayOfWeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/google/android/material/picker/DaysHeaderAdapter;->CALENDAR_DAY_STYLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    .line 50
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    .line 51
    iget-object v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    .line 52
    return-void
.end method

.method private positionToDayOfWeek(I)I
    .locals 2
    .param p1, "position"    # I

    .line 87
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->firstDayOfWeek:I

    add-int/2addr v0, p1

    .line 88
    .local v0, "dayConstant":I
    iget v1, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-le v0, v1, :cond_0

    .line 89
    sub-int/2addr v0, v1

    .line 91
    :cond_0
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    .line 56
    iget v0, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->daysInWeek:I

    if-lt p1, v0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->positionToDayOfWeek(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 75
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "day":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 77
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;->positionToDayOfWeek(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 80
    iget-object v1, p0, Lcom/google/android/material/picker/DaysHeaderAdapter;->calendar:Ljava/util/Calendar;

    sget v2, Lcom/google/android/material/picker/DaysHeaderAdapter;->CALENDAR_DAY_STYLE:I

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-object v0
.end method
