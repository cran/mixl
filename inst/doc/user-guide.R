## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE-------------------------------------------------------
#  mixl::create_halton_draws(Nindividuals, Ndraws, draw_dimensions)

## ---- eval = FALSE-------------------------------------------------------
#  U_A =          @B_price * $price_A / 1000 + @B_timeA * $time_A / 60 + @B_change * $change_A;
#  U_B = @ASC_B + @B_price * $price_B / 1000 + @B_timeB * $time_B / 60;

## ---- eval = FALSE-------------------------------------------------------
#  ASC_B_RND = @ASC_B + draw_1 * @SIGMA_B  + draw_2 * @SIGMA_B2;
#  
#  U_A =             @B_price * $price_A / 1000 + @B_timeA * $time_A / 60 + @B_change * $change_A;
#  U_B = ASC_B_RND + @B_price * $price_B / 1000 + @B_timeB * $time_B / 60;

## ---- eval = FALSE-------------------------------------------------------
#  p_choice = log(chosen_utility / sum(utilities) );
#  p_indic_total = P_indic_1 * P_indic_2 * .... P_indic_k;
#  
#  p_choice = p_choice + (1/num_obs)*log(p_indic_total);

## ---- eval = FALSE-------------------------------------------------------
#  dnorm(x, mean, sd)

## ---- eval = FALSE-------------------------------------------------------
#  R::dnorm(x, mean, sd, 0);

