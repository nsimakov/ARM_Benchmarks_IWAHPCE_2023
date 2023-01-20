library(tibble)

# ppn also used for order
# ARM
# AMD
# Intel
# NVIDIA GPU

ppn <- c(
  "Ookami-OSS"=48,
  "Ookami-Fujitsu"=48,
  "Ookami-ARM"=48,
  "Ookami-Cray"=48,
  "Ookami-Bin"=48,
  "ThunderX2"=64,
  
  "amazon-graviton2-48"=48,
  "amazon-graviton3-48"=48,
  "amazon-graviton3-64"=64,
  "google-tau-t2a-48"=48,
  "azure-altra-48"=48,
  "azure-altra-64"=64,

  "Bridges-2"=128,
  "Expanse"=128,
  "Anvil"=128,
  
  "stampede2-knl"=68,
  "stampede2-skx"=48,
  "stampede2-icx"=80,
  
  "UBHPC_32core"=32,
  "UBHPC_32core_ICC"=32,
  "UBHPC_56core"=56,
  "UBHPC_56core_ICC"=56,
  
  "UBHPC_32core_V100"=32,
  "UBHPC_56core_A100"=56
)
ookami_all <- c("Ookami-OSS","Ookami-Fujitsu","Ookami-ARM","Ookami-Cray","Ookami-Bin")

# nominal_freq: base/max, base/max/max avx512 all cores
resource_spec0 <- tribble(
  ~resource, ~formal_name, ~cpu, ~release_date, ~cores_per_node, ~nominal_freq,
  "Ookami-OSS", "Ookami-OSS","ARM Futjitsu A64FX, SVE 512bit","2019?",48,"1.8",
  "Ookami-Fujitsu", "Ookami-Fujitsu","ARM Futjitsu A64FX, SVE 512bit","2019?",48,"1.8",
  "Ookami-Cray", "Ookami-Cray","ARM Futjitsu A64FX, SVE 512bit","2019?",48,"1.8",
  "Ookami-ARM","Ookami-ARM","ARM Futjitsu A64FX, SVE 512bit","2019?",48,"1.8",
  "Ookami-Bin","Ookami-Bin","ARM Futjitsu A64FX, SVE 512bit","2019?",48,"1.8",
  "ThunderX2","ThunderX2","ARM Cavium ThunderX2","2018",64,"2.0-2.5?",
  "amazon-graviton3-64", "Amazon-Graviton3-64","ARM Amazon Graviton 3, Neoverse V1, SVE 256bit","Nov-2021",64,"2.5",
  "amazon-graviton3-48", "Amazon-Graviton3-48","ARM Amazon Graviton 3, Neoverse V1, SVE 256bit","Nov-2021",48,"2.5",
  "amazon-graviton2-48", "Amazon-Graviton2-48","ARM Amazon Graviton 2, Neoverse N1","Nov-2019",48,"2.6",
  "azure-altra-64", "Azure-Altra-64","ARM Ampere Altra, Neoverse N1","March-2021",64,"Up to 3.0",
  "azure-altra-48", "Azure-Altra-48","ARM Ampere Altra, Neoverse N1","March-2021",48,"Up to 3.0",
  "google-tau-t2a-48","Google-T2A-48","ARM Ampere Altra, Neoverse N1","March-2021",48,"Up to 3.0",
  
  
  "Bridges-2","PSC Bridges-2","x86 AMD EPYC 7742 Zen2(Rome), AVX2","Mid-2019",128,"2.25",
  "Expanse","SDSC Expanse","x86 AMD EPYC 7742 Zen2(Rome), AVX2","Mid-2019",128,"2.25",
  "Anvil","Purdue Anvil","x86 AMD EPYC 7763 Zen3(Milan), AVX2","March-2021",128,"2.45",
  
  "stampede2-knl","TACC-Stampede 2 KNL","x86 Intel Xeon Phi 7250, Knights Landing, AVX512","Q2 2016",68,"1.4",
  "stampede2-skx","TACC-Stampede 2 SKX","x86 Intel Xeon Platinum 8160, Skylake-X, AVX512","Q3 2017",48,"2.1",
  "stampede2-icx","TACC-Stampede 2 ICX","x86 Intel Xeon Platinum 8380, Ice Lake, AVX512","Q2 2021",80,"2.3",
  
  "UBHPC_32core", "UBHPC_32core_SKX","x86 Intel Xeon Gold 6130,  Skylake-X, AVX512","Q3 2017",32,"2.1/3.7",
  "UBHPC_32core_ICC", "UBHPC_32core_SKX_ICC","x86 Intel Xeon Gold 6130,  Skylake-X, AVX512","Q3 2017",32,"2.1/3.7",
  "UBHPC_32core_V100", "UBHPC_32core_SKX_ICC","x86 Intel Xeon Gold 6130,  Skylake-X, AVX512, NVIDIA V100x2","Q3 2017",32,"2.1/3.7",
  "UBHPC_56core", "UBHPC_56core","x86 Intel Xeon Gold 6330,  Ice Lake, AVX512","Q2 2021",56,"2.0",
  "UBHPC_56core_ICC", "UBHPC_56core_ICC","x86 Intel Xeon Gold 6330,  Ice Lake, AVX512","Q2 2021",56,"2.0",
  "UBHPC_56core_A100", "UBHPC_56core_A100","x86 Intel Xeon Gold 6330,  Ice Lake, AVX512, NVIDIA A100x2","Q2 2021",56,"2.0"
)

resource_spec <- tribble(
  ~resource, ~formal_name, ~cpu, ~release_date, ~cores_per_node, ~nominal_freq,
  "Ookami-OSS", "Ookami-OSS","ARM Futjitsu A64FX, SVE 512b (SBU-Ookami, GCC)","2019?",48,"1.8",
  "Ookami-Fujitsu", "Ookami-Fujitsu","ARM Futjitsu A64FX, SVE 512b (SBU-Ookami, FJ)","2019?",48,"1.8",
  "Ookami-Cray", "Ookami-Cray","ARM Futjitsu A64FX, SVE 512b (SBU-Ookami, Cray)","2019?",48,"1.8",
  "Ookami-ARM","Ookami-ARM","ARM Futjitsu A64FX, SVE 512b (SBU-Ookami, ARM)","2019?",48,"1.8",
  "Ookami-Bin","Ookami-Bin","ARM Futjitsu A64FX, SVE 512b (SBU-Ookami)","2019?",48,"1.8",
  "ThunderX2","ThunderX2","ARM Cavium ThunderX2 (SBU-Ookami)","2018",64,"2.0-2.5?",
  "amazon-graviton3-64", "Amazon-Graviton3-64","ARM Amazon Graviton 3, Neoverse V1, SVE 256b (AWS)","Nov-2021",64,"2.5",
  "amazon-graviton3-48", "Amazon-Graviton3-48","ARM Amazon Graviton 3, Neoverse V1, SVE 256b (AWS)","Nov-2021",48,"2.5",
  "amazon-graviton2-48", "Amazon-Graviton2-48","ARM Amazon Graviton 2, Neoverse N1 (AWS)","Nov-2019",48,"2.6",
  "azure-altra-64", "Azure-Altra-64","ARM Ampere Altra, Neoverse N1 (Azure)","March-2021",64,"Up to 3.0",
  "azure-altra-48", "Azure-Altra-48","ARM Ampere Altra, Neoverse N1 (Azure)","March-2021",48,"Up to 3.0",
  "google-tau-t2a-48","Google-T2A-48","ARM Ampere Altra, Neoverse N1 (Azure)","March-2021",48,"Up to 3.0",
  
  
  "Bridges-2","PSC Bridges-2","x86 AMD EPYC 7742 Zen2(Rome), AVX2 (PSC-Bridges-2)","Mid-2019",128,"2.25",
  "Expanse","SDSC Expanse","x86 AMD EPYC 7742 Zen2(Rome), AVX2 (SDSC Expanse)","Mid-2019",128,"2.25",
  "Anvil","Purdue Anvil","x86 AMD EPYC 7763 Zen3(Milan), AVX2 (Purdue Anvil)","March-2021",128,"2.45",
  
  "stampede2-knl","TACC-Stampede 2 KNL","x86 Intel Xeon Phi 7250, KNL, AVX512 (TACC-Stampede 2)","Q2 2016",68,"1.4",
  "stampede2-skx","TACC-Stampede 2 SKX","x86 Intel Xeon Plat. 8160, Skylake-X, AVX512 (TACC-Stampede 2)","Q3 2017",48,"2.1",
  "stampede2-icx","TACC-Stampede 2 ICX","x86 Intel Xeon Plat. 8380, Ice Lake, AVX512 (TACC-Stampede 2)","Q2 2021",80,"2.3",
  
  "UBHPC_32core", "UBHPC_32core_SKX","x86 Intel Xeon Gold 6130,  Skylake-X, AVX512 (UB-HPC)","Q3 2017",32,"2.1/3.7",
  "UBHPC_32core_ICC", "UBHPC_32core_SKX_ICC","x86 Intel Xeon Gold 6130,  Skylake-X, AVX512 (UB-HPC)","Q3 2017",32,"2.1/3.7",

  "UBHPC_56core", "UBHPC_56core","x86 Intel Xeon Gold 6330,  Ice Lake, AVX512 (UB-HPC)","Q2 2021",56,"2.0",
  "UBHPC_56core_ICC", "UBHPC_56core_ICC","x86 Intel Xeon Gold 6330,  Ice Lake, AVX512 (UB-HPC)","Q2 2021",56,"2.0",
  
  "UBHPC_32core_V100", "UBHPC_32core_SKX_ICC","x86 Intel Xeon Gold 6130, NVIDIA V100x2 (UB-HPC)","Q3 2017",32,"2.1/3.7",
  "UBHPC_56core_A100", "UBHPC_56core_A100","x86 Intel Xeon Gold 6330, NVIDIA A100x2 (UB-HPC)","Q2 2021",56,"2.0"
)


sci_notation <- function(average,stdev,n=NULL,digits=NULL) {
  if(is.null(n)) {
    if(is.null(digits)) {
      return(paste0(average," ± ",stdev))
    }else{
      return(paste0(round(average,digits)," ± ",round(stdev,digits)))
    }
  } else {
    if(is.null(digits)) {
      return(paste0(average," ± ",stdev," (",n(),")"))
    }else{
      return(paste0(round(average,digits)," ± ",round(stdev,digits)," (",n,")"))
    }
  }
}

sci_notation_calc <- function(val,n=FALSE,digits=NULL) {
  if(sum(is.na(val))==length(val)){
    return(NA)
  }
  average <- mean(val)
  stdev <- sd(val)
  if(n==FALSE) {
    if(is.null(digits)) {
      return(paste0(average," ± ",stdev))
    }else{
      return(paste0(round(average,digits)," ± ",round(stdev,digits)))
    }
  } else {
    n <- length(val)
    if(is.null(digits)) {
      return(paste0(average," ± ",stdev," (",n(),")"))
    }else{
      return(paste0(round(average,digits)," ± ",round(stdev,digits)," (",n,")"))
    }
  }
}


m_walltime <- "Wall Clock Time"
