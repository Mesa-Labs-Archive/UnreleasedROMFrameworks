.class final Lcom/samsung/android/server/wifi/WifiControlHistoryProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiControlHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider$DatabaseHelper;->this$0:Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;

    const-string/jumbo v0, "WifiHistory.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string/jumbo v0, "WifiControlHistoryProvider"

    const-string/jumbo v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider$DatabaseHelper;->this$0:Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;->-wrap0(Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    if-nez p2, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    :cond_1
    const-string/jumbo v0, "WifiControlHistoryProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider$DatabaseHelper;->this$0:Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;->-wrap1(Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider$DatabaseHelper;->this$0:Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;->-wrap0(Lcom/samsung/android/server/wifi/WifiControlHistoryProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
