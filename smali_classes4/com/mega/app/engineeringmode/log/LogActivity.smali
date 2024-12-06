.class public Lcom/mega/app/engineeringmode/log/LogActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "LogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CLEAR_LOG:I = 0x1

.field private static final SAVE_LOG:I = 0x0

.field private static final SET_LOG_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClearLog:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditTextPath:Landroid/widget/EditText;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLevelName:Landroid/widget/TextView;

.field private mLogHandler:Landroid/os/Handler;

.field private mLogId:I

.field private mLogIdSpinner:Landroid/widget/Spinner;

.field private mLogLevel:I

.field private mLogLevelSpinner:Landroid/widget/Spinner;

.field private mLoggerManager:Lcom/mega/logger/MegaLogManager;

.field private mOpStatus:Z

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSaveLog:Landroid/widget/Button;

.field private mSetLogLevel:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/mega/app/engineeringmode/log/LogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/log/LogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/mega/logger/MegaLogManager;

    invoke-direct {v0}, Lcom/mega/logger/MegaLogManager;-><init>()V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLoggerManager:Lcom/mega/logger/MegaLogManager;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "logger_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/mega/app/engineeringmode/log/LogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mega/app/engineeringmode/log/LogActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogId:I

    return p1
.end method

.method static synthetic access$202(Lcom/mega/app/engineeringmode/log/LogActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/mega/app/engineeringmode/log/LogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;

    .line 35
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getLogId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mega/app/engineeringmode/log/LogActivity;)Lcom/mega/logger/MegaLogManager;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;

    .line 35
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLoggerManager:Lcom/mega/logger/MegaLogManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mega/app/engineeringmode/log/LogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;

    .line 35
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mega/app/engineeringmode/log/LogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;

    .line 35
    iget-boolean v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mOpStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mega/app/engineeringmode/log/LogActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mOpStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mega/app/engineeringmode/log/LogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/log/LogActivity;

    .line 35
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getLogId()I
    .locals 2

    .line 182
    iget v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    return v1

    .line 190
    :cond_1
    return v1

    .line 188
    :cond_2
    return v1

    .line 186
    :cond_3
    return v1
.end method

.method private getLogLevel()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogLevel:I

    packed-switch v0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 214
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 212
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 210
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 208
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 206
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 204
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 249
    :sswitch_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getLogId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getLogId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    goto/16 :goto_1

    .line 250
    :cond_1
    :goto_0
    const v0, 0x7f0e005d

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    return-void

    .line 225
    :sswitch_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mEditTextPath:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const v0, 0x7f0e005a

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getLogId()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 231
    const v0, 0x7f0e005e

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    return-void

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 237
    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mEditTextPath:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    goto :goto_1

    .line 257
    .end local v0    # "message":Landroid/os/Message;
    :sswitch_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 258
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 260
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 261
    goto :goto_1

    .line 241
    :sswitch_3
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getLogId()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 242
    const v0, 0x7f0e005c

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    return-void

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    nop

    .line 265
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090074 -> :sswitch_3
        0x7f0900f6 -> :sswitch_2
        0x7f09013c -> :sswitch_1
        0x7f090154 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->setContentView(I)V

    .line 66
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 67
    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 68
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mEditTextPath:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mSaveLog:Landroid/widget/Button;

    .line 71
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mClearLog:Landroid/widget/Button;

    .line 72
    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mSetLogLevel:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogIdSpinner:Landroid/widget/Spinner;

    .line 75
    const v0, 0x7f0900f5

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogLevelSpinner:Landroid/widget/Spinner;

    .line 77
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/log/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLevelName:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mSaveLog:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mClearLog:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mSetLogLevel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogIdSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/mega/app/engineeringmode/log/LogActivity$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/log/LogActivity$1;-><init>(Lcom/mega/app/engineeringmode/log/LogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogLevelSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/mega/app/engineeringmode/log/LogActivity$2;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/log/LogActivity$2;-><init>(Lcom/mega/app/engineeringmode/log/LogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 108
    iput-object p0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/mega/app/engineeringmode/log/LogActivity$3;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mega/app/engineeringmode/log/LogActivity$3;-><init>(Lcom/mega/app/engineeringmode/log/LogActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    .line 153
    const-string v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "product":Ljava/lang/String;
    sget-object v2, Lcom/mega/app/engineeringmode/log/LogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x1090008

    if-nez v2, :cond_0

    const-string v2, "monza"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogIdSpinner:Landroid/widget/Spinner;

    const v4, 0x7f030006

    invoke-static {p0, v4, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogIdSpinner:Landroid/widget/Spinner;

    const v4, 0x7f030005

    invoke-static {p0, v4, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    :goto_0
    const-string v2, "ro.build.type"

    invoke-static {v2, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "buildType":Ljava/lang/String;
    const-string v2, "user"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mEditTextPath:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mSaveLog:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v2, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mClearLog:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iput-object v1, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mLogHandler:Landroid/os/Handler;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/log/LogActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 178
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 179
    return-void
.end method
