% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CityWaterBalance.R
\name{CityWaterBalance}
\alias{CityWaterBalance}
\title{Tracks flows of water through the urban system}
\usage{
CityWaterBalance(data, p, print = TRUE)
}
\arguments{
\item{data}{xts or zoo object with date index and columns of data for:\cr
precipitation (prcp) \cr
evapotranspiration (et) \cr
streamflow in (inflow) \cr
streamflow out (outflow) \cr
water supply imports (ws_imports) \cr
other imports (etc_imports) \cr
surface water for industrial uses  (sw_ind) \cr
surface water withdrawals for potable use (sw_pot) \cr
surface water withdrawals for nonpotable use (sw_npot) \cr
groundwater withdrawals for industrial uses (gw_ind) \cr
groundwater withdrawals for potable use (gw_pot) \cr
groundwater withdrawals for nonpotable use (gw_npot) \cr
deep groundwater recharge (dgr) \cr
combined sewer overflow events (cso) \cr
wastewater treatment plant effluent (wtpe) \cr
runoff estimate (runoff) \cr
baseflow estimate (baseflow) \cr}

\item{p}{list of fixed parameter values for: \cr
fraction of pet lost to interception (interc) \cr
multiplier for et (et_mult) \cr
multiplier for outflow (flow_mult) \cr
fraction of area that is open water (open_wat) \cr
multiplier for runoff (run_mult) \cr
fraction of runoff diverted to sewers (run_css) \cr
multiplier for baseflow (bf_mult) \cr
fraction of potable water supply lost to leaks (nonrev) \cr
fraction of industrial water that evaporates (ind_evap) \cr
fraction of potable use that returns to sewers (wast_gen) \cr
fraction of potable use that evaporates (pot_atm) \cr
fraction of nonpotable use that infiltrates (npot_infilt) \cr
fraction of wastewater that evaporates from sludge (slud_evap) \cr
fraction of wastewater effluent from gw infiltration (leak_css) \cr
fraction of groundwater from deep, confined aquifers (dgw) \cr
multiplier for deep pumping replaced by lateral flow (dgw_rep) \cr}

\item{print}{option to print messages}
}
\value{
list of dataframes:
 \item{all_flows}{all flows} 
 \item{state_vars}{state variables}
 \item{global_balance}{global water balance} 
 \item{internal_balance}{internal water balance}
}
\description{
This function tracks flows of water as they move through pathways and 
storages within the urban system. Data can be in any self-consistent units.
}
\examples{
p <- list("interc" = 0, "et_mult" = 1, "flow_mult" = 1, 
         "open_wat" = 0.02, "run_mult" = 3.378, "run_css" = 0.35, 
         "bf_mult" = 1, "nonrev" = 0.08, "ind_evap" = 0.012,
         "wast_gen" = 0.85, "pot_atm" = 0.13, "npot_infilt" = 0.5,
         "slud_evap" = 0, "leak_css" = 0.05,"dgw" = 0.5, "dgw_rep" = 0.5)
m <- CityWaterBalance(cwb_data, p) 
}
