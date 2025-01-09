# `greek`
**An easy way to write Greek letters in MATLAB**

### Syntax
```matlab
 greek(nameOfLetter)
 gL = greek(nameOfLetter)
```

### Input
* `nameOfLetter` :: Name of a Greek letter. Capitalize for capital Greeks.

### Output
* `gL` :: Greek letter as a `char` scalar

### Examples
```matlab
 % Example 1
 delta = greek('delta');
 disp([delta '18O is the normalized stable water isotope ratio.'])
 >> δ18O is the normalized stable water isotope ratio.
```
```matlab
 %Example 2
 alpha = greek('Alpha');
 omega = greek('Omega');
 disp(['I am ' alpha ' and ' omega '. The beginning and the end.'])
 >> I am Α and Ω. The beginning and the end.
```
```matlab
 % Example 3
 fprintf('Carbon-14 transmutes to nitrogen-14 by %c decay.',...
            greek('beta'))
 >> Carbon-14 transmutates to nitrogen-14 by ß decay.
```