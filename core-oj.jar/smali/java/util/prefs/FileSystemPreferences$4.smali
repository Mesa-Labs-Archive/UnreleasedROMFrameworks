.class Ljava/util/prefs/FileSystemPreferences$4;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .locals 0

    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$4;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$4;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$4;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    const/4 v0, 0x0

    return-object v0
.end method
