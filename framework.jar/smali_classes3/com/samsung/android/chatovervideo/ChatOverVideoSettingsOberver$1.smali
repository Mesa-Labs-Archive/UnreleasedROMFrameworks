.class Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$1;
.super Landroid/database/ContentObserver;
.source "ChatOverVideoSettingsOberver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;


# direct methods
.method constructor <init>(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$1;->this$0:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$1;->this$0:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    invoke-static {v0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->-wrap0(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver$1;->this$0:Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;

    invoke-static {v0}, Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;->-wrap0(Lcom/samsung/android/chatovervideo/ChatOverVideoSettingsOberver;)V

    return-void
.end method
