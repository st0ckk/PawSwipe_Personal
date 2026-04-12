import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/comunicacion_yplay_dates/create_chat/create_chat_widget.dart';
import 'dart:async';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'active_matches_chat_model.dart';
export 'active_matches_chat_model.dart';

class ActiveMatchesChatWidget extends StatefulWidget {
  const ActiveMatchesChatWidget({super.key});

  static String routeName = 'ActiveMatchesChat';
  static String routePath = '/activeMatchesChat';

  @override
  State<ActiveMatchesChatWidget> createState() =>
      _ActiveMatchesChatWidgetState();
}

class _ActiveMatchesChatWidgetState extends State<ActiveMatchesChatWidget> {
  late ActiveMatchesChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActiveMatchesChatModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFF9E6),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: CreateChatWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          backgroundColor: Color(0xFF1A1461),
          elevation: 8.0,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFDE00),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF1A1461),
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(
                MyProfileWidget.routeName,
                extra: <String, dynamic>{
                  '__transition_info__': TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: Text(
              'Messages',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: Color(0xFF1A1461),
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://static.wixstatic.com/media/4a9dcf_3288f2baeb274e8b93d14d4b9f66ee6d~mv2.png/v1/fill/w_1962,h_542,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/4a9dcf_3288f2baeb274e8b93d14d4b9f66ee6d~mv2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: StreamBuilder<List<ChatsRecord>>(
                  stream: queryChatsRecord(
                    queryBuilder: (chatsRecord) => chatsRecord
                        .where(
                          'users',
                          arrayContains: currentUserReference,
                        )
                        .orderBy('last_message_datetime'),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<ChatsRecord> listViewChatsRecordList = snapshot.data!;

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewChatsRecordList.length,
                      separatorBuilder: (_, __) => SizedBox(height: 7.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewChatsRecord =
                            listViewChatsRecordList[listViewIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            unawaited(
                              () async {
                                await listViewChatsRecord.reference.update({
                                  ...mapToFirestore(
                                    {
                                      'unread_users': FieldValue.arrayRemove(
                                          [currentUserReference]),
                                    },
                                  ),
                                });
                              }(),
                            );

                            context.pushNamed(
                              ChatWidget.routeName,
                              queryParameters: {
                                'chatRef': serializeParam(
                                  listViewChatsRecord.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Builder(
                            builder: (context) {
                              if (listViewChatsRecord.users.length == 2) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        listViewChatsRecord.users
                                            .where((e) =>
                                                e != currentUserReference)
                                            .toList()
                                            .firstOrNull!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final containerUsersRecord =
                                          snapshot.data!;

                                      return Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 48.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      containerUsersRecord
                                                          .photoUrl,
                                                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                                                    ),
                                                    width: 48.0,
                                                    height: 48.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        containerUsersRecord
                                                            .displayName,
                                                        maxLines: 1,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                                "d/M h:mm a",
                                                                listViewChatsRecord
                                                                    .lastMessageDatetime!),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          if (listViewChatsRecord
                                                              .unreadUsers
                                                              .contains(
                                                                  currentUserReference))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 10.0,
                                                                height: 10.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100.0),
                                                                ),
                                                              ),
                                                            ),
                                                        ].divide(SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    listViewChatsRecord
                                                        .lastMessage,
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        listViewChatsRecord.users
                                            .where((e) =>
                                                e != currentUserReference)
                                            .toList()
                                            .firstOrNull!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final containerUsersRecord =
                                          snapshot.data!;

                                      return Container(
                                        width: 100.0,
                                        height: 86.79,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0),
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                        ),
                                        child: StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              listViewChatsRecord.users
                                                  .where((e) =>
                                                      e == currentUserReference)
                                                  .toList()
                                                  .elementAtOrNull(1)!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }

                                            final rowUsersRecord =
                                                snapshot.data!;

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(),
                                                    child: Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                rowUsersRecord
                                                                    .photoUrl,
                                                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                                                              ),
                                                              width: 35.0,
                                                              height: 35.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 1.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerUsersRecord
                                                                    .photoUrl,
                                                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                                                              ),
                                                              width: 35.0,
                                                              height: 35.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Chat grupal',
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              dateTimeFormat(
                                                                  "d/M h:mm a",
                                                                  listViewChatsRecord
                                                                      .lastMessageDatetime!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        listViewChatsRecord
                                                            .lastMessage,
                                                        maxLines: 1,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
