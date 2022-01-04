model TankEmptying
replaceable package Medium = Modelica.Media.Water.StandardWaterOnePhase
    constrainedby Modelica.Media.Interfaces.PartialMedium;
  Modelica.Fluid.Vessels.OpenTank tank(
    height=0.1,
    crossArea=0.5,
    level_start=0.01,
    redeclare package Medium = Medium,
    portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.1)},
    nPorts=1) annotation (Placement(transformation(extent={{-20,20},{20,60}})));

  Modelica.Fluid.Pipes.StaticPipe pipe(
    redeclare package Medium = Medium,
    length=1,
    diameter=0.2)
    annotation (Placement(transformation(extent={{-52,-22},{-32,-2}})));

  Modelica.Fluid.Sources.MassFlowSource_T boundary(
    redeclare package Medium = Medium,
    m_flow=-1,
    nPorts=1)
    annotation (Placement(transformation(extent={{-104,-24},{-84,-4}})));

  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{-88,44},{-68,64}})));
equation 
  connect(boundary.ports[1], pipe.port_a) annotation (Line(points={{-84,-14},{-68,
          -14},{-68,-12},{-52,-12}}, color={0,127,255}));
  connect(pipe.port_b, tank.ports[1]) annotation (Line(points={{-32,-12},{-16,-12},
          {-16,20},{0,20}}, color={0,127,255}));
  annotation (uses(Modelica(version="3.2.3")), experiment(StopTime=10,
        __Dymola_Algorithm="Dassl"));
end TankEmptying;