package Unstructured
    extends Modelica.Icons.Package;
    
     package PackA
    extends Modelica.Icons.Package;
    end PackA;
    
    model ModelA
    parameter Real A = 2;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
    end ModelA;

    block BlockA
    extends Modelica.Blocks.Icons.Block;
    end BlockA;

    record RecordA
    extends Modelica.Icons.Record;
    end RecordA;

    connector ConnectorA
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Ellipse(lineColor={0,0,0},fillColor={100,100,100},fillPattern=FillPattern.Solid,pattern=LinePattern.None,extent={{-100.0,-100.0},{100.0,100.0}})}));
    end ConnectorA;

    annotation(uses(Modelica(version = "4.0.0")));
end Unstructured;