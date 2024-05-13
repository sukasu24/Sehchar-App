import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'anxioustask1_model.dart';
export 'anxioustask1_model.dart';

class Anxioustask1Widget extends StatefulWidget {
  const Anxioustask1Widget({super.key});

  @override
  State<Anxioustask1Widget> createState() => _Anxioustask1WidgetState();
}

class _Anxioustask1WidgetState extends State<Anxioustask1Widget> {
  late Anxioustask1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Anxioustask1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Text(
              'Challenge negative thoughts',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Outfit',
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://qph.cf2.quoracdn.net/main-qimg-6ba487460a1ba3ed6839e8f4b913a5dc-lq',
                  width: 404.0,
                  height: 361.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: Text(
                  ' Practice cognitive-behavioral techniques to challenge and reframe negative thoughts that contribute to anxiety. Replace irrational beliefs with more realistic and balanced perspectives.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
