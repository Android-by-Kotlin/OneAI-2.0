.class public Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;
.super Landroid/gov/nist/javax/sip/header/ParametersHeader;
.source "PAccessNetworkInfo.java"

# interfaces
.implements Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.implements Landroid/javax/sip/header/ExtensionHeader;


# instance fields
.field private accessType:Ljava/lang/String;

.field private extendAccessInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    const-string/jumbo v0, "P-Access-Network-Info"

    invoke-direct {p0, v0}, Landroid/gov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Landroid/gov/nist/core/NameValueList;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Landroid/gov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-super {p0}, Landroid/gov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    .line 284
    .local v0, "retval":Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method public encodeBody(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Landroid/gov/nist/core/NameValueList;

    invoke-virtual {v0}, Landroid/gov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    const-string v1, " "

    const-string v2, ";"

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 257
    iget-object v0, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Landroid/gov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Landroid/gov/nist/core/NameValueList;->encode(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 276
    instance-of v0, p1, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/gov/nist/javax/sip/header/ParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAccessType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public getCGI3GPP()Ljava/lang/String;
    .locals 1

    .line 116
    const-string/jumbo v0, "cgi-3gpp"

    invoke-virtual {p0, v0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCI3GPP2()Ljava/lang/String;
    .locals 1

    .line 190
    const-string/jumbo v0, "ci-3gpp2"

    invoke-virtual {p0, v0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSLLocation()Ljava/lang/String;
    .locals 1

    .line 167
    const-string/jumbo v0, "dsl-location"

    invoke-virtual {p0, v0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionAccessInfo()Ljava/lang/Object;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getUtranCellID3GPP()Ljava/lang/String;
    .locals 1

    .line 142
    const-string/jumbo v0, "utran-cell-id-3gpp"

    invoke-virtual {p0, v0}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    .line 85
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setAccessType(), the accessType parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCGI3GPP(Ljava/lang/String;)V
    .locals 2
    .param p1, "cgi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 102
    if-eqz p1, :cond_0

    .line 107
    const-string/jumbo v0, "cgi-3gpp"

    invoke-virtual {p0, v0, p1}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setCGI3GPP(), the cgi parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCI3GPP2(Ljava/lang/String;)V
    .locals 2
    .param p1, "ci3Gpp2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 177
    if-eqz p1, :cond_0

    .line 182
    const-string/jumbo v0, "ci-3gpp2"

    invoke-virtual {p0, v0, p1}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setCI3GPP2(), the ci3Gpp2 parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDSLLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "dslLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 153
    if-eqz p1, :cond_0

    .line 158
    const-string/jumbo v0, "dsl-location"

    invoke-virtual {p0, v0, p1}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setDSLLocation(), the dslLocation parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtensionAccessInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "extendAccessInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 233
    if-eqz p1, :cond_0

    .line 240
    iput-object p1, p0, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    .line 242
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setExtendAccessInfo(), the extendAccessInfo parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, "cgi-3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "utran-cell-id-3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "dsl-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ci-3gpp2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/gov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 211
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/gov/nist/javax/sip/header/ParametersHeader;->setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 214
    :goto_1
    nop

    .line 222
    :goto_2
    return-void
.end method

.method public setUtranCellID3GPP(Ljava/lang/String;)V
    .locals 2
    .param p1, "utranCellID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 128
    if-eqz p1, :cond_0

    .line 133
    const-string/jumbo v0, "utran-cell-id-3gpp"

    invoke-virtual {p0, v0, p1}, Landroid/gov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setUtranCellID3GPP(), the utranCellID parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
