for each {&tab} no-lock:
    &if  "{&atr1}" <> "" &then
         disp {&tab}.{&atr1}.
    &endif
    DISP {&tab}.{&atr2}.
end.
