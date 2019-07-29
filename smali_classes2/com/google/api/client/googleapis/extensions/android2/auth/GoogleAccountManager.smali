.class public final Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;
.super Ljava/lang/Object;
.source "GoogleAccountManager.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"


# instance fields
.field private final manager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 1
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->manager:Landroid/accounts/AccountManager;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;-><init>(Landroid/accounts/AccountManager;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getAccountByName(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 78
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v0

    .line 77
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "arr$":[Landroid/accounts/Account;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccountManager()Landroid/accounts/AccountManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->manager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->manager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->manager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
