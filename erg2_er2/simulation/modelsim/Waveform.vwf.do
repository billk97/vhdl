vlog -work work C:/altera/13.0sp1/vhdl/erg2_er2/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ergasia2_vlg_vec_tst
onerror {resume}
add wave {ergasia2_vlg_vec_tst/i1/A}
add wave {ergasia2_vlg_vec_tst/i1/A[15]}
add wave {ergasia2_vlg_vec_tst/i1/A[14]}
add wave {ergasia2_vlg_vec_tst/i1/A[13]}
add wave {ergasia2_vlg_vec_tst/i1/A[12]}
add wave {ergasia2_vlg_vec_tst/i1/A[11]}
add wave {ergasia2_vlg_vec_tst/i1/A[10]}
add wave {ergasia2_vlg_vec_tst/i1/A[9]}
add wave {ergasia2_vlg_vec_tst/i1/A[8]}
add wave {ergasia2_vlg_vec_tst/i1/A[7]}
add wave {ergasia2_vlg_vec_tst/i1/A[6]}
add wave {ergasia2_vlg_vec_tst/i1/A[5]}
add wave {ergasia2_vlg_vec_tst/i1/A[4]}
add wave {ergasia2_vlg_vec_tst/i1/A[3]}
add wave {ergasia2_vlg_vec_tst/i1/A[2]}
add wave {ergasia2_vlg_vec_tst/i1/A[1]}
add wave {ergasia2_vlg_vec_tst/i1/A[0]}
add wave {ergasia2_vlg_vec_tst/i1/Apotel}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma1}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma2}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma3}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma4}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma5}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma6}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma7}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma8}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma9}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma10}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma11}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma12}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma13}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma14}
add wave {ergasia2_vlg_vec_tst/i1/Apotelesma15}
add wave {ergasia2_vlg_vec_tst/i1/B}
add wave {ergasia2_vlg_vec_tst/i1/B[15]}
add wave {ergasia2_vlg_vec_tst/i1/B[14]}
add wave {ergasia2_vlg_vec_tst/i1/B[13]}
add wave {ergasia2_vlg_vec_tst/i1/B[12]}
add wave {ergasia2_vlg_vec_tst/i1/B[11]}
add wave {ergasia2_vlg_vec_tst/i1/B[10]}
add wave {ergasia2_vlg_vec_tst/i1/B[9]}
add wave {ergasia2_vlg_vec_tst/i1/B[8]}
add wave {ergasia2_vlg_vec_tst/i1/B[7]}
add wave {ergasia2_vlg_vec_tst/i1/B[6]}
add wave {ergasia2_vlg_vec_tst/i1/B[5]}
add wave {ergasia2_vlg_vec_tst/i1/B[4]}
add wave {ergasia2_vlg_vec_tst/i1/B[3]}
add wave {ergasia2_vlg_vec_tst/i1/B[2]}
add wave {ergasia2_vlg_vec_tst/i1/B[1]}
add wave {ergasia2_vlg_vec_tst/i1/B[0]}
add wave {ergasia2_vlg_vec_tst/i1/CarryOutTEL}
add wave {ergasia2_vlg_vec_tst/i1/OpCode}
add wave {ergasia2_vlg_vec_tst/i1/OpCode[2]}
add wave {ergasia2_vlg_vec_tst/i1/OpCode[1]}
add wave {ergasia2_vlg_vec_tst/i1/OpCode[0]}
run -all