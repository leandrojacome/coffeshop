import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CouenterQuantidadeWidget extends StatefulWidget {
  const CouenterQuantidadeWidget({
    Key? key,
    this.quantidade,
  }) : super(key: key);

  final int? quantidade;

  @override
  _CouenterQuantidadeWidgetState createState() =>
      _CouenterQuantidadeWidgetState();
}

class _CouenterQuantidadeWidgetState extends State<CouenterQuantidadeWidget> {
  int? countControllerValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 40,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
          width: 1,
        ),
      ),
      child: FlutterFlowCountController(
        decrementIconBuilder: (enabled) => Icon(
          Icons.remove_rounded,
          color: enabled
              ? FlutterFlowTheme.of(context).primaryText
              : FlutterFlowTheme.of(context).secondaryText,
          size: 20,
        ),
        incrementIconBuilder: (enabled) => Icon(
          Icons.add_rounded,
          color: enabled
              ? FlutterFlowTheme.of(context).primaryColor
              : FlutterFlowTheme.of(context).secondaryText,
          size: 20,
        ),
        countBuilder: (count) => Text(
          count.toString(),
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        count: countControllerValue ??= widget.quantidade!,
        updateCount: (count) => setState(() => countControllerValue = count),
        stepSize: 1,
        minimum: 1,
      ),
    );
  }
}
