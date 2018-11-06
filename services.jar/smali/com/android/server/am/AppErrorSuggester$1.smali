.class Lcom/android/server/am/AppErrorSuggester$1;
.super Ljava/lang/Object;
.source "AppErrorSuggester.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorSuggester;->showAppearOnTopDialog(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorSuggester;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorSuggester;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrorSuggester$1;->this$0:Lcom/android/server/am/AppErrorSuggester;

    iput-object p2, p0, Lcom/android/server/am/AppErrorSuggester$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/AppErrorSuggester$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrorSuggester$1;->this$0:Lcom/android/server/am/AppErrorSuggester;

    iget-object v1, p0, Lcom/android/server/am/AppErrorSuggester$1;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/AppErrorSuggester$1;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppErrorSuggester;->-wrap0(Lcom/android/server/am/AppErrorSuggester;Ljava/lang/String;I)V

    return-void
.end method
