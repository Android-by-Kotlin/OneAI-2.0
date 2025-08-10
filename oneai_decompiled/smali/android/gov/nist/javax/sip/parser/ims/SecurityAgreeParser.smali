.class public Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.super Landroid/gov/nist/javax/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# direct methods
.method protected constructor <init>(Landroid/gov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Landroid/gov/nist/javax/sip/parser/Lexer;

    .line 62
    invoke-direct {p0, p1}, Landroid/gov/nist/javax/sip/parser/HeaderParser;-><init>(Landroid/gov/nist/javax/sip/parser/Lexer;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Landroid/gov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public parse(Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;)Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    .locals 11
    .param p1, "header"    # Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/gov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v1}, Landroid/gov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Landroid/gov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-direct {v0}, Landroid/gov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    .local v0, "list":Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_0

    .line 88
    .end local v0    # "list":Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/gov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v1}, Landroid/gov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Landroid/gov/nist/javax/sip/header/ims/SecurityServerList;

    invoke-direct {v0}, Landroid/gov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    .restart local v0    # "list":Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_0

    .line 90
    .end local v0    # "list":Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/gov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v1}, Landroid/gov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    new-instance v0, Landroid/gov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-direct {v0}, Landroid/gov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    .line 98
    .restart local v0    # "list":Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    :goto_0
    iget-object v1, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v1}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v1, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Landroid/gov/nist/core/LexerCore;->match(I)Landroid/gov/nist/core/Token;

    .line 100
    iget-object v1, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v1}, Landroid/gov/nist/core/LexerCore;->getNextToken()Landroid/gov/nist/core/Token;

    move-result-object v1

    .line 101
    .local v1, "type":Landroid/gov/nist/core/Token;
    invoke-virtual {v1}, Landroid/gov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v3}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v3, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/gov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 105
    .local v3, "la":C
    const/16 v5, 0xa

    if-ne v3, v5, :cond_2

    .line 107
    invoke-virtual {v0, p1}, Landroid/gov/nist/javax/sip/header/SIPHeaderList;->add(Landroid/gov/nist/javax/sip/header/SIPHeader;)Z

    .line 108
    return-object v0

    .line 110
    :cond_2
    const/16 v6, 0x3b

    if-ne v3, v6, :cond_3

    .line 111
    iget-object v7, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v7, v6}, Landroid/gov/nist/core/LexerCore;->match(I)Landroid/gov/nist/core/Token;

    .line 113
    :cond_3
    iget-object v7, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v7}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 117
    :goto_1
    :try_start_0
    iget-object v7, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v7, v4}, Landroid/gov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    if-eq v7, v5, :cond_a

    .line 119
    invoke-virtual {p0, p1}, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parseParameter(Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;)V

    .line 120
    iget-object v7, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v7}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 121
    iget-object v7, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v7, v4}, Landroid/gov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    .line 122
    .local v7, "laInLoop":C
    if-eq v7, v5, :cond_a

    if-nez v7, :cond_4

    .line 123
    goto/16 :goto_3

    .line 124
    :cond_4
    const/16 v8, 0x2c

    if-ne v7, v8, :cond_8

    .line 126
    invoke-virtual {v0, p1}, Landroid/gov/nist/javax/sip/header/SIPHeaderList;->add(Landroid/gov/nist/javax/sip/header/SIPHeader;)Z

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Landroid/gov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v10}, Landroid/gov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 128
    new-instance v9, Landroid/gov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v9}, Landroid/gov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    move-object p1, v9

    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Landroid/gov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v10}, Landroid/gov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 130
    new-instance v9, Landroid/gov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v9}, Landroid/gov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    move-object p1, v9

    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Landroid/gov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v10}, Landroid/gov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 132
    new-instance v9, Landroid/gov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v9}, Landroid/gov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    move-object p1, v9

    .line 135
    :cond_7
    :goto_2
    iget-object v9, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Landroid/gov/nist/core/LexerCore;->match(I)Landroid/gov/nist/core/Token;

    .line 137
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 138
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8, v2}, Landroid/gov/nist/core/LexerCore;->match(I)Landroid/gov/nist/core/Token;

    .line 139
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8}, Landroid/gov/nist/core/LexerCore;->getNextToken()Landroid/gov/nist/core/Token;

    move-result-object v8

    move-object v1, v8

    .line 140
    invoke-virtual {v1}, Landroid/gov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 143
    :cond_8
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 145
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8, v4}, Landroid/gov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v6, :cond_9

    .line 146
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8, v6}, Landroid/gov/nist/core/LexerCore;->match(I)Landroid/gov/nist/core/Token;

    .line 148
    :cond_9
    iget-object v8, p0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Landroid/gov/nist/core/LexerCore;

    invoke-virtual {v8}, Landroid/gov/nist/core/LexerCore;->SPorHT()V

    .line 150
    .end local v7    # "laInLoop":C
    goto/16 :goto_1

    .line 151
    :cond_a
    :goto_3
    invoke-virtual {v0, p1}, Landroid/gov/nist/javax/sip/header/SIPHeaderList;->add(Landroid/gov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "ex":Ljava/text/ParseException;
    throw v2

    .line 94
    .end local v0    # "list":Landroid/gov/nist/javax/sip/header/SIPHeaderList;
    .end local v1    # "type":Landroid/gov/nist/core/Token;
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v3    # "la":C
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseParameter(Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;)V
    .locals 3
    .param p1, "header"    # Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    sget-boolean v0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    const-string/jumbo v1, "parseParameter"

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_0
    const/16 v0, 0x3d

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->nameValue(C)Landroid/gov/nist/core/NameValue;

    move-result-object v0

    .line 73
    .local v0, "nv":Landroid/gov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Landroid/gov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Landroid/gov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "nv":Landroid/gov/nist/core/NameValue;
    sget-boolean v0, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void

    .line 75
    :catchall_0
    move-exception v0

    sget-boolean v2, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {p0, v1}, Landroid/gov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v0
.end method
