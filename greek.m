function gL = greek(nameOfLetter)
%Greek letter
%
%Syntax
%  greek(nameOfLetter)
%  gL = greek(nameOfLetter)
%
%
%Input
%  nameOfLetter :: Name of a Greek letter. Capitalize if you want
%                 the capital version of the greek letter.
%
%Output
%  gL :: Greek letter as a character scalar
%
%
%Examples
% %Example 1
%  delta = greek('delta');
%  disp([delta '18O is the normalized stable water isotope ratio.'])
%  >> δ18O is the normalized stable water isotope ratio.
%
% %Example 2
%  alpha = greek('Alpha');
%  omega = greek('Omega');
%  disp(['I am ' alpha ' and ' omega '. The beginning and the end.'])
%  >> I am Α and Ω. The beginning and the end.
%
% %Example 3
%  fprintf('Carbon-14 transmutes to nitrogen-14 by %c decay.',...
%           greek('beta'))
%  >> Carbon-14 transmutates to nitrogen-14 by ß decay.
%

% Copyright 2025 Austin M. Weber

% Import Greek letters
greekLetters = readtable('/private/greek-letters.xlsx',...
	'FileType','spreadsheet',...
	'ReadVariableNames',false);
names=greekLetters{:,1};
symbols=greekLetters{:,2};

% Check user input
if ~isa(nameOfLetter,'string')
 if ~isa(nameOfLetter,'char')
  error('Input must be a string.')
 end
 nameOfLetter=char(nameOfLetter);
end

% Identify appropriate Greek symbol
name_idx=contains(names,nameOfLetter);
if any(name_idx)
 gL=symbols(name_idx);
 gL=gL{1};
else
 error('Letter name not recognized.')
end

end

