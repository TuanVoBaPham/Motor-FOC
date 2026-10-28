% THAM SỐ CỦA ĐỘNG CƠ PMSM
ratedVoltage = 36;              % V
ratedCurrent = 9.5;             % A
ratedSpeed = 3000;              % Rpm
ratedMoment = 0.57;             % Nm
magnetFlux = 0.02;              % Wb
Rs = 0.9;                       % Ohm
Rd = 0.9;                       % Ohm
Rq = 0.9;                       % Ohm
Ld = 0.75/1000;                 % H
Lq = 0.75/1000;                 % H
polePairNumber = 2;
inertialMoment = 0.0023;         % Kgm^2
f = 16000;                      % Hz
Udc = 70;                       % V

fc_current = 1000;
fc_speed = 1000;
omega_current = 2*pi*fc_current;
omega_speed = 2*pi*fc_speed;
% Tốc độ điện = số cặp cực x tốc độ góc

% THAM SỐ CỦA BỘ ĐIỀU KHIỂN DÒNG ĐIỆN

% ==========Id===================
Kp_Id = Ld*omega_current;
Ki_Id = Rs*omega_current;
% ===========Iq==================
Kp_Iq = Lq*omega_current;
Ki_Iq = Rs*omega_current;

% THAM SỐ CỦA BỘ ĐIỀU KHIỂN TỐC ĐỘ

zeta = 0.707;
Kp_T = 2*zeta*omega_speed*inertialMoment;
Ki_T = inertialMoment*omega_speed^2;