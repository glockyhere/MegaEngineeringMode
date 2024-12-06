.class public Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "MegaEngineerModeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEngineeringModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mega/app/engineeringmode/common/EngineeringModeList;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineeringModeNative:Lcom/mega/app/engineeringmode/common/EngineeringModeNative;

.field private mPwdLoginDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/mega/app/engineeringmode/common/EngineeringModeNative;

    invoke-direct {v0}, Lcom/mega/app/engineeringmode/common/EngineeringModeNative;-><init>()V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeNative:Lcom/mega/app/engineeringmode/common/EngineeringModeNative;

    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;)Lcom/mega/app/engineeringmode/common/EngineeringModeNative;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeNative:Lcom/mega/app/engineeringmode/common/EngineeringModeNative;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showPwdLoginDialog()V
    .locals 9

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 100
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c0034

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 102
    const v3, 0x7f0901d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    .local v3, "tvTips":Landroid/widget/TextView;
    const v4, 0x7f09005c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 104
    .local v4, "btnConfirm":Landroid/widget/Button;
    const v5, 0x7f09005a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 105
    .local v5, "btnCancel":Landroid/widget/Button;
    const v6, 0x7f0900bf

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 106
    .local v6, "et":Landroid/widget/EditText;
    new-instance v7, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;

    invoke-direct {v7, p0, v6, v3}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$1;-><init>(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v7, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;

    invoke-direct {v7, p0, v2}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity$2;-><init>(Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v7, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    .line 134
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    iget-object v7, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 136
    iget-object v7, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    iget-object v7, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method private startActivity(I)V
    .locals 3
    .param p1, "pos"    # I

    .line 166
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "name"

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Found activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 173
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 176
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private startFragmentActivity(I)V
    .locals 3
    .param p1, "pos"    # I

    .line 180
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mega/app/engineeringmode/SecondActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Found activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 185
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 188
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 60
    .local v0, "listView":Landroid/widget/ListView;
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "product":Ljava/lang/String;
    const-string v3, "ro.build.type"

    invoke-static {v3, v2}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "buildType":Ljava/lang/String;
    sget-object v3, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Product name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " buildType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v3, "bigsur"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "user"

    if-nez v3, :cond_3

    .line 65
    const-string v3, "santamonica"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    const-string v3, "solvang"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 72
    const-string v3, "saguaro"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, "engineering_mode.json"

    invoke-static {p0, v3}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 73
    :cond_2
    :goto_0
    const-string v3, "engineering_mode_solvang.json"

    invoke-static {p0, v3}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    const-string v3, "engineering_mode_bigsur_user.json"

    invoke-static {p0, v3}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 69
    :cond_4
    const-string v3, "engineering_mode_bigsur.json"

    invoke-static {p0, v3}, Lcom/mega/app/engineeringmode/common/Util;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    .line 78
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v6, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v11, "name"

    if-ge v5, v6, :cond_5

    .line 80
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v6, "keyValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v7}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v6    # "keyValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 85
    .end local v5    # "i":I
    :cond_5
    new-instance v12, Landroid/widget/SimpleAdapter;

    const v8, 0x1090004

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    const v6, 0x1020014

    aput v6, v10, v5

    move-object v5, v12

    move-object v6, p0

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 89
    .local v5, "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->showPwdLoginDialog()V

    .line 95
    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mPwdLoginDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 196
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 146
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/mega/app/engineeringmode/common/Util;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Monkey is running, return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p3, :cond_2

    .line 151
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getShowType()Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0, p3}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->startActivity(I)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getShowType()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "fragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0, p3}, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->startFragmentActivity(I)V

    goto :goto_0

    .line 159
    :cond_2
    sget-object v0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick: not found class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/MegaEngineerModeActivity;->mEngineeringModeList:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/app/engineeringmode/common/EngineeringModeList;

    invoke-virtual {v2}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    :goto_0
    return-void
.end method
