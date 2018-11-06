.class Lcom/android/server/bridge/BridgeProxy$RunnableCallback;
.super Landroid/os/IRunnableCallback$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/IRunnableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$RunnableCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v43, "moveToContactPreProcess"

    const-string/jumbo v44, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_11

    const-string/jumbo v43, "targetIdAdded"

    const/16 v44, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    const-string/jumbo v43, "target"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    const-string/jumbo v43, "com.sec.knox.moveto.containerId"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v34, :cond_0

    if-eqz v34, :cond_f

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v43

    if-eqz v43, :cond_f

    :cond_0
    const/4 v12, 0x0

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v43

    const-string/jumbo v44, "user"

    invoke-virtual/range {v43 .. v44}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/UserManager;

    const-string/jumbo v18, "KNOX"

    const/16 v43, -0x1

    move/from16 v0, v43

    if-ne v9, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    const-string/jumbo v44, "move_to_knox"

    invoke-static/range {v43 .. v44}, Lcom/android/server/bridge/BridgeProxy;->-wrap10(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_1
    :goto_0
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_3

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v43

    if-eqz v43, :cond_1

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    xor-int/lit8 v43, v43, 0x1

    if-eqz v43, :cond_1

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    if-eqz v43, :cond_3

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v38

    const-string/jumbo v18, "Secure Folder"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v43, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v43, "moveToFor"

    const-string/jumbo v44, "Contact"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    const/16 v17, 0x0

    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_4

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_1

    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    if-eqz v43, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get19(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get19(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get20(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string/jumbo v43, "moveToDstCId"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v43, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    :goto_3
    const/16 v43, 0x0

    return-object v43

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get5(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get5(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const-string/jumbo v43, "moveToDstCId"

    const/16 v44, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_8
    :goto_4
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v43

    if-eqz v43, :cond_9

    const-string/jumbo v43, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v43

    if-eqz v43, :cond_a

    const-string/jumbo v43, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v43

    if-eqz v43, :cond_8

    const-string/jumbo v43, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/bridge/BridgeProxy;->-get10(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v44

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    move/from16 v2, v45

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_c
    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_e

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    if-eqz v43, :cond_c

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v43 .. v43}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v43

    if-eqz v43, :cond_c

    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v15, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v43, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_d

    const/16 v43, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-interface {v0, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    if-eqz v21, :cond_5

    :try_start_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v43

    if-lez v43, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/Intent;

    const-string/jumbo v44, "Move to KNOX"

    invoke-static/range {v43 .. v44}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v44, "android.intent.extra.INITIAL_INTENTS"

    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v43, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/os/Parcelable;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v43, 0x10000000

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v43

    sget-object v44, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v44, "onReceive() Move to personal"

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get10(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    if-eqz v43, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get19(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get19(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v43, 0x10000000

    move-object/from16 v0, v19

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v43, 0x0

    return-object v43

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get5(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get5(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_11
    const-string/jumbo v43, "RequestProxy"

    const-string/jumbo v44, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_19

    const-string/jumbo v43, "queryPersonaInfos"

    const-string/jumbo v44, "cmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_15

    new-instance v30, Landroid/os/Bundle;

    invoke-direct/range {v30 .. v30}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get22(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v43

    if-eqz v43, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get22(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getSize()I

    move-result v31

    if-lez v31, :cond_14

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v31

    if-ge v11, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get22(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getItem(I)Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;

    move-result-object v13

    if-eqz v13, :cond_12

    iget-object v0, v13, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->type:Ljava/lang/String;

    move-object/from16 v43, v0

    aput-object v43, v25, v11

    iget v0, v13, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    move/from16 v43, v0

    aput v43, v23, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    iget v0, v13, Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;->id:I

    move/from16 v44, v0

    invoke-static/range {v43 .. v44}, Lcom/android/server/bridge/BridgeProxy;->-wrap1(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    aput-object v43, v24, v11

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_13
    const-string/jumbo v43, "personaIds"

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v43, "personaTypes"

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v43, "personaNames"

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_14
    return-object v30

    :cond_15
    const-string/jumbo v43, "cmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-wrap4(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_17

    const-string/jumbo v43, "callerPkgName"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-wrap3(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap2(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v43

    return-object v43

    :cond_16
    const/16 v43, 0x0

    return-object v43

    :cond_17
    const-string/jumbo v43, "notifysync"

    const-string/jumbo v44, "cmd"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    const-string/jumbo v43, "callerPkgName"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-wrap3(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_18

    const-string/jumbo v43, "contentIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    invoke-virtual {v14}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    new-instance v6, Landroid/app/Command;

    invoke-direct {v6}, Landroid/app/Command;-><init>()V

    const-string/jumbo v43, "personaId"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    iput v0, v6, Landroid/app/Command;->personaId:I

    const-string/jumbo v43, "contentIntent"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v43

    check-cast v43, Landroid/app/PendingIntent;

    move-object/from16 v0, v43

    iput-object v0, v6, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    const-string/jumbo v43, "commandType"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v6, Landroid/app/Command;->type:Ljava/lang/String;

    const-string/jumbo v43, "intent"

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v43

    check-cast v43, Landroid/content/Intent;

    move-object/from16 v0, v43

    iput-object v0, v6, Landroid/app/Command;->intent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "personaId"

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ":"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "contentIntent"

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ":"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "commandType"

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/bridge/BridgeProxy;->-get26(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->executeCommandForPersona(Landroid/app/Command;)V

    :cond_18
    const/16 v43, 0x0

    return-object v43

    :cond_19
    const-string/jumbo v43, "GetExportPolicy"

    const-string/jumbo v44, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v43, "syncerName"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " get export policy for"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " for user "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/bridge/BridgeProxy;->-get10(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v43, v0

    const-string/jumbo v44, "knox-export-data"

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy;->-wrap11(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v43, "policyValue"

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
