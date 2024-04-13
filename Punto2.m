%% Rodrigo Juan Julian
clc
clear all
%%
%Conexión con nodo maestro
rosinit;
%%
%Creación del publicador
velPub = rospublisher("/turtle1/cmd_vel","geometry_msgs/Twist");
%Creación del mensaje
velMsg = rosmessage(velPub);
%%
%Valor del mensaje
velMsg.Angular.Z = 1; 
velMsg.Linear.X = 0;
%Envio
send(velPub,velMsg);
%Tiempo para el movimiento
pause(1)
%Suscripción
subs = rossubscriber("/turtle1/pose")
pause(1)
fprintf('/n subs,')
actual_pose = receive(sub,3)