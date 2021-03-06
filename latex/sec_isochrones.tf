\chapter{Isochrone Systems} \label{sec:isochrones}

An isochrone is a set of model stars, varying in mass, with the same age and metallicity --- a synthetic cluster. When plotted on a CMD, an isochrone should trace out the location of every single star in the cluster, except for those already evolved beyond the AGB. As described in \S\ref{sec:binocs}, these single models are then combined to form the full binary library that are compared against observation. The \binocs results are only as good as the underlying models themselves, and despite years of refinement, stellar structure models have not yet been perfected. Competing isochrone systems, which adopt different physical inputs than one another, show significant differences along the main sequence, which is perhaps the most well-understood phase of stellar evolution. We test several competing stellar structure models against our observed data to determine which system is most consistent with the observed data.

\section{Isochrone Physics} \label{sec:isochrone_physics}

Stellar structure models compute stellar parameters through two phases of modeling. First, a \emph{stellar core} is computed by building the star layer-by-layer. Using the mass and age of the star, stellar core models return two values: the star's temperature and surface gravity. These two values uniquely determine a star's position on the H-R diagram, with surface gravity becoming an analogue to luminosity. Using Newtonian gravity ($g = GM/R^2$), the radius of the star can also be inferred. On first approximation, the energy output of a star is a near-blackbody, governed by the temperature derived for the core model. In reality, the spectrum also has absorption lines from elements in the star's atmosphere. A \emph{stellar atmosphere} is generated using the temperature and surface gravity from the core model, as well as individual elemental abundances. Atomic and molecular absorption lines are overlaid on the blackbody spectrum and the synthetic flux is output.

Competing isochrone systems incorporate different physical assumptions, such as the equation of state (EOS) model, or the conductive and radiative opacity values, which govern energy transport within the stellar core. Some models use a very basic ideal-gas EOS, while others use a complex, computationally-intensive EOS that accounts for ionization, degeneracy pressure, and relativistic electron gas. Different models also differ on physical processes, specifying different mixing lengths for convection, and using alternate atmosphere models. Even basic physical parameters, such as the fraction of Helium within stars, the heavy-element mixture of the Sun, or solar metallicity, are not constant between systems.

In this work, we consider four well-known isochrone systems: Dartmouth \citep{2007AJ....134..376D}, Y$^2$ \citep{2001ApJS..136..417Y}, Padova \citep{2002AA...391..195G}, and PARSEC \citep{2012MNRAS.427..127B}. Values for many aspects of the input physics within these models are shown in table \ref{tab:isoparams}.

\begin{table}
\begin{minipage}[c]{\textwidth} \centering \footnotesize
\begin{tabular}{|c|c|c|} \hline
System						& Opacities										& Equation of State 						\\ \hline \hline
\multirow{2}{*}{Dartmouth}	& $\log T > 4.5$: OPAL96\footnotemark[4] 		& $M>0.8M_\odot$: Ideal Gas + Coulomb 		\\
							& $\log T < 4.3$: \citet{2005ApJ...623..585F}	& $M<0.7M_\odot$: FreeEOS\footnotemark[7]	\\ \hline
\multirow{2}{*}{Y$^2$}		& $\log T > 4.1$: OPAL96\footnotemark[4] 		& \multirow{2}{*}{\citet{1996ApJ...456..902R}}	\\
							& $\log T < 3.8$: AF94\footnotemark[5]			&											\\ \hline
\multirow{2}{*}{Padova}		& $\log T > 4.1$: OPAL93\footnotemark[6] 		& $\log T>7.0$: \citet{1965ZA.....61..241K}	\\
							& $\log T < 4.0$: AF94\footnotemark[5]			& $\log T<7.0$: \citet{1990ApJ...350..300M}	\\ \hline
\multirow{2}{*}{PARSEC}		& $\log T > 4.2$: OPAL96\footnotemark[4] 		& \multirow{2}{*}{FreeEOS\footnotemark[7]}	\\
							& $\log T < 4.1$: \citet{2009AA...508.1539M}	& \\ \hline
\end{tabular}

\begin{tabular}{|c|c|c|c|c|} 
\multicolumn{3}{c}{ } \\ \cline{2-5}
\multicolumn{1}{c|}{ }	& He Fraction			& $Z_\odot$	& Solar Composition			& Atmosphere Model 				\\ \hline \hline
Dartmouth				& $0.245 + 1.54 Z$	& 0.019		& \citet{1998SSRv...85..161G}	& PHOENIX\footnotemark[8]		\\ \hline
Y$^2$					& $0.23 + 2.00 Z$	& 0.018		& \citet{1993PhST...47..133G}	& \citet{1998AAS..130...65L}	\\ \hline
Padova					& $0.23 + 2.25 Z$	& 0.019		& \citet{1993PhST...47..133G}	& ATLAS9\footnotemark[9]		\\ \hline
PARSEC					& $0.2485 + 1.78 Z$	& 0.015		& \citet{2011SoPh..268..255C}	& ATLAS9\footnotemark[9] (modified) \\ \hline
\end{tabular}
\caption[Isochrone input physics]{Values for basic input physics for the four systems studied in this work. \label{tab:isoparams}}
\footnotetext[4]{\citet{1996ApJ...464..943I}}
\footnotetext[5]{\citet{1994ApJ...437..879A}}
\footnotetext[6]{\citet{1993ApJ...412..752I}}
\footnotetext[7]{\citet{Irwin:2012uw}}
\footnotetext[8]{\citet{2005ApJ...623..585F}}
\footnotetext[9]{\citet{2003IAUS..210P.A20C}}
\end{minipage}
\end{table}
\addtocounter{footnote}{6}


\section{Comparison to CMDs} \label{sec:isocompare_cmd}

Isochrones are often fit to CMDs in order to assess their quality. The four isochrone systems studied in this work are compared to three CMDs of the cluster M37 in figure \ref{fig:isocompare_cmd}.

\begin{figure} \centering
\includegraphics[trim= 0mm 102mm 0mm 0mm, clip, width=0.95\textwidth]{../plots/eps/isocompare_cmd.eps}
\caption[Comparison of isochrone systems to M37]{Comparison of isochrone systems to various CMDs of M37. \emph{Red:} PARSEC; \emph{Orange:} Padova; \emph{Blue:} Dartmouth. All isochrones are 350 Myr, with [Fe/H]$=+0.08$, E($B-V$)$= 0.30$, at a distance of 1386 pc. \label{fig:isocompare_cmd}}
\end{figure}

It is apparent from figure \ref{fig:isocompare_cmd} that all isochrone systems fit well (and similarly) above $g \sim 19$, and diverge lower on the main sequence, to varying degrees. The \binocs routine builds synthetic binary stars using every possible combination of single stars within an isochrone model; deviations between observation and theory for low-mass stars will throw off fits to binary systems across the entire mass range. The isochrone models must be improved before they can be used to predict accurate masses of cluster stars.

An isochrone fit to several CMDs of one cluster, as seen in figure \ref{fig:isocompare_cmd}, can show that the isochrone systems diverge from observation at low mass, but does not provide information on \emph{why} this occurs. Ideally, one would like to determine which of the physical inputs described in \S\ref{sec:isochrone_physics} improve an isochrone fit, and which ones detract. To do this, isochrones must be compared to a range of clusters with different ages and metallicities. Using the clusters in our dataset for which we have complete photometric data, this procedure can be accomplished.


\section{Isochrone Preparation}

There are a large number of variables that differ between isochrone systems, even beyond those listed in table \ref{tab:isoparams}. If a comparison of models is to produce any useful insights, some of these variables must be removed from consideration. This can be done by standardizing some aspects of the isochrones.

\subsection{Metallicity}

The metallicity of an isochrone has a large affect on its shape. To compare isochrones of various systems to one another, each must have a common [Fe/H]. Y$^2$ isochrones can be interpolated to any required [Fe/H] by an included FORTRAN routine. Padova and PARSEC isochrones are available for any metallicity from their online source, the interactive CMD 2.5 interface\footnote{http://stev.oapd.inaf.it/cgi-bin/cmd}.  Dartmouth isochrones are also available with any metallicity from an online source\footnote{http://stellar.dartmouth.edu/\%7Emodels/webtools.html}, but are only available for cluster ages $> 1$ Gyr. A ``base grid'' of Dartmouth isochrones are available, for any age, with [Fe/H]$= -1.0$, $-0.5$, $+0.07$, $+0.21$, $+0.36$, $+0.56$.

For each cluster, isochrones are generated with the metallicity denoted in table \ref{tab:clusterParameters}. For young clusters ($<1$ Gyr), Dartmouth models will only be used if the cluster [Fe/H] is within 0.01 dex of a ``base grid'' metallicity.

\subsection{Age}

Not all isochrone systems have a common age grid. Padova and PARSEC isochrones exist for constant steps of 0.05 in $\log(Age)$, from 6.6 (4 Myr) to 10.1 (12.6 Gyr). Y$^2$ and Dartmouth isochrones, instead, exist in steps in linear Age. Y$^2$ spans the ages of 100 Myr to 13.5 Gyr, while Dartmouth covers the 250 Myr to 15 Gyr range. Due to the difference in age ranges between systems, and the $\log(Age)$ vs linear Age steps, not all isochrone systems will have the exact age of a specific cluster.

For most clusters, the closest age may vary up to as much as 100 Myr between systems. As we are most interested in how isochrones model the main sequence, where \binocs is most effective, this age difference will not cause any problems. Main sequence lifetimes are often in the Gyr timescale, with little change in properties; the 100 Myr difference between isochrone systems will not affect the results for main sequence stars.

\subsection{Atmospheres}

As seen in table \ref{tab:isoparams}, all isochrone systems use different atmosphere models, which poses a problem for understanding what physical processes improve isochrone fits. Stars with similar internal parameters (surface gravity, temperature), but different atmosphere models, may look high discrepant on a CMD. Any differences between isochrone systems in the stellar core phase may be overshadowed by differences in the atmosphere color-temperature relations.

To avoid this confusion, atmosphere models will be standardized across all isochrone systems, allowing for direct comparison of internal structure physics to observed data. As we also wish to test the accuracy of the atmosphere models themselves, two alternate models will be applied to each isochrone: ATLAS9 \citep{2003IAUS..210P.A20C}, and BT-Settl \citep{2012RSPTA.370.2765A}.

ATLAS9\footnote{http://wwwuser.oat.ts.astro.it/castelli/colors.html} and BT-Settl\footnote{http://phoenix.ens-lyon.fr/Grids/BT-Settl/} color-temperature relations were available from pre-computed grids online. The first few lines of the BT-Settl grid is shown in table \ref{tab:btsettl}. The star's intrinsic parameters are taken as an input into the grid: [Fe/H], surface gravity ($\log g$), temperature, and \emph{bolometric magnitude} --- the magnitude determined from the full luminosity of the star. Using the full grid, the output columns are interpolated to the exact parameters of the star.

\begin{table} \centering
\begin{tabular}{|ccc|ccccc|} \hline
[Fe/H] & $\log g$ & $T$ & BC$_V$ & $U-V$ & $B-V$ & $V-R$ & $V-I$ \\ \hline \hline
 +0.00 &  4.00 & 2000 & -6.8210 & 7.9860 & 3.2970 & 4.1080 & 7.4740  \\
 -0.50 &  4.00 & 2000 & -6.8210 & 6.8060 & 2.6950 & 3.7190 & 6.8120  \\
 +0.50 &  4.00 & 2000 & -6.8210 & 7.2550 & 3.1260 & 3.5610 & 6.5120  \\
 -1.50 &  4.00 & 2000 & -6.8210 & 7.7290 & 2.4500 & 4.3580 & 7.1940  \\
 -2.00 &  4.00 & 2000 & -6.8210 & 8.6660 & 2.4300 & 4.1580 & 6.6450  \\
 -2.50 &  4.00 & 2000 & -6.8210 & 9.8650 & 2.5310 & 3.7760 & 5.9720  \\
 -3.00 &  4.00 & 2000 & -6.8210 & 9.5850 & 2.6400 & 3.0880 & 4.8850  \\
 -3.50 &  4.00 & 2000 & -6.8210 & 9.5410 & 2.8980 & 2.5800 & 3.9990  \\
 -4.00 &  4.00 & 2000 & -6.8210 & 8.7580 & 2.6850 & 2.1920 & 3.4510  \\ \hline
\end{tabular}
\parbox{0.8\textwidth}{\caption[Sample of BT-Settl color-temperature grid]{Sample of the first few lines and columns of the BT-Settl pre-computed color-temperature grid. \label{tab:btsettl}}}
\end{table}

Output from the grid is the \emph{bolometric correction} to $V$, BC$_V$. This is the difference between the star's bolometric magnitude and its magnitude in the $V$ filter: $V = M_{bol} - BC_V$. Also output are the colors of the star, all using the $V$ filter (as seen in table \ref{tab:btsettl}). Using only the four input values, all magnitudes can be determined for the star. While table \ref{tab:btsettl} only shown color terms for the Johnson-Cousins filter system, more filters are available in the atmosphere grids. BT-Settl grids contain color terms for all 17 filters used in the \binocs routine: $UBVRIugrizJHK_S$[3.6][4.5][5.8][8.0]. ATLAS9 grids contain all filters but the IRAC mid-IR bands.

In the following analysis, observed data will be compared to 11 different isochrones. The original Padova, PARSEC, and Dartmouth isochrones will be compared to the observational data. The atmosphere model included with the Y$^2$ isochrones does not contain SDSS $ugriz$ magnitudes, and will therefore not be compared to clusters with $ugriz$ optical photometry. Using the original isochrone $\log g$ and $T_\text{eff}$ values, new magnitudes are computed for ATLAS9 and BT-Settl atmospheres. The online ATLAS9 color transformation does not include mid-IR magnitudes, so no systems will be compared in those bands when using grid-derived ATLAS9 atmospheres. Additionally, ATLAS9 atmospheres are only available for stars with temperatures greater than 3500K. Stars in the Dartmouth and Y$^2$ systems with temperatures below this were removed in the ATLAS9 isochrones.


\section{Empirical Ridgelines}

Comparison of observed photometry to 11 different isochrones in up to 9 colors, for several clusters, will become unwieldy if CMDs are to be used. To simplify plotting and allow deeper understanding of the isochrone deviations, \emph{empirical ridgelines} are used instead. Empirical ridgelines are hand-drawn traces of the observed single-star main sequence, as seen in figure \ref{fig:ridge_cmd}. Instead of showing isochrones overplotted on a CMD to asses their fit, residuals between isochrone-predicted colors and empirical ridgeline colors can be shown to illustrate the same concept. Small residuals in predicted vs observed colors will mean a good fit.

\begin{figure} \centering
\includegraphics[trim= 0mm 102mm 0mm 0mm, clip, width=0.95\textwidth]{../plots/eps/ridge_cmd.eps}
\caption[Example of empirical ridgelines]{Empirical ridgelines for several CMDs of M37. \label{fig:ridge_cmd}}
\end{figure}

Empirical ridgelines have been determined for several clusters: M35, M36, M37, M67 and NGC 2420. These ridgelines were created by visual inspection of various cluster CMDs, and tracing the main sequence. Values for these ridgelines are located in appendix \ref{app:ridgelines}.

\section{Comparison}
Clusters for which ridgelines exist were compared to isochrone systems. Residuals were computed for all 9 available CMDs, and are shown for select clusters in subsections below.


\subsection{M37} \label{sec:m37_resid}

\begin{figure}
\includegraphics[trim= 0mm 10mm 0mm 0mm, clip, width=0.99\textwidth]{../plots/eps/ridgeline_m37.eps}
\caption[Isochrone-to-empirical ridgeline residuals for M37]{Comparison of isochrone systems to empirical ridgeline for M37 in 7 CMDs. \emph{Top:} Residuals between empirical ridgeline and isochrones. \emph{Bottom:} Comparison of isochrones to cluster CMD, using original atmosphere models. All isochrones are 350 Myr, with [Fe/H] = +0.08, E($B-V$) = 0.30, at a distance of 1387 pc. \emph{Red:} PARSEC; \emph{Orange:} Padova; \emph{Blue:} Dartmouth; \emph{Purple:} Y$^2$. Y$^2$ isochrones do not contain Sloan colors, and are therefore not available in the original atmosphere plots. \label{fig:m37_resid}}
\end{figure}

A plot of isochrone ridgeline residuals are shown for M37 in figure \ref{fig:m37_resid}. For a majority of the mass range, from 0.9 to 2.5 M$_\odot$, all isochrone systems not only match each other closely, but also deviate very little from the empirical ridgeline. This is interesting, considering each system employs vastly different physical assumptions for high mass stars. For example, Dartmouth's equation of state is a simple ideal gas, with a correction for coulomb interaction, while FreeEOS (used by PARSEC) handles ionization, degeneracy pressure and relativistic electron gas, yet the results end up nearly identical. The lack of difference is due to the fact that higher mass stars (M $>$ 0.9 M$_\odot$) have sufficiently low density that the addition of non-ideal effects in the equation of state does not produce appreciable shifts in the stellar model. It appears that main sequence stellar parameters are insensitive to nearly all input physics for stars with masses between 0.9 and 2.5 M$_\odot$.

For stars less massive than 0.9 M$_\odot$, isochrone models begin to deviate from each other, and the observed data. Dartmouth and Y$^2$ isochrones fit observed colors to within 0.25 for nearly all CMDs and masses, while Padova and PARSEC isochrones deviate greatly for the $g-K_S$, $g-$[3.6] and $g-$[4.5] colors. Ideally, these deviations should be correlated with differences in input physics within the models.

Comparing Y$^2$ and Padova isochrone input physics in table \ref{tab:isoparams}, there are many similarities for low mass stars: the same opacity code, the same solar composition, and very similar He fractions and Z$_\odot$, yet the resulting ridgelines are highly discrepant. The only significant difference in physics for low mass stars in Y$^2$ and Padova isochrones are the equation of state code. Padova isochrones' discrepant fits are not surprising, as the \citet{1990ApJ...350..300M} equation of state has been shown to produce inaccurate results even in the Sun \citep{1992AcA....42....5D}. All Padova isochrones will be affected by this inaccurate equation of state code.

While Padova's deviation from observation is easily tied to the failure of the underlying equation of state, their successor, the PARSEC system, predicts even bluer colors than those from Padova. There are many differences between PARSEC and the other systems considered, with PARSEC being the only system with a difference value for Z$_\odot$. With only a single cluster being considered, it is hard to determine which of the varied parameters contribute to the bluer colors computed.


\subsection{NGC 2420} \label{sec:n2420_resid}

\begin{figure}
\includegraphics[trim= 0mm 10mm 0mm 0mm, clip, width=0.99\textwidth]{../plots/eps/ridgeline_n2420.eps}
\caption[Isochrone-to-empirical ridgeline residuals for NGC 2420]{Same as figure \ref{fig:m37_resid}, but for NGC 2420. All isochrones are 2.0 Gyr, with [Fe/H] = -0.23, E($B-V$) = 0.03, at a distance of 2512 pc. \label{fig:n2420_resid}}
\end{figure}

A plot of isochrone ridgelines residuals for NGC 2420 are shown in figure \ref{fig:n2420_resid}. Similar to the results from M37, all isochrone systems match closely to the observed data for stars more massive than 0.9 M$_\odot$. Also as before, the Padova and PARSEC isochrones deviate greatly from the empirical ridgeline, predicting far bluer colors than observed, while the Dartmouth and Y$^2$ isochrones match much more closely.

Dartmouth isochrones are useful in looking at atmosphere model effects, due to the poor fitting of Padova and PARSEC, and the non-existence of Sloan colors for Y$^2$ isochrones. ATLAS9 atmospheres appear to improve some colors ($g-K_S$, $g-$[3.6], $g-$[4.5]), while making other residuals worse ($g-r$, $g-i$, $g-z$). BT-Settl atmospheres, on the other hand, improve every color residual for NGC 2420 with respect to the ATLAS9 and original atmosphere model isochrones. The BT-Settl atmosphere code carefully handles molecular absorption lines in the stellar spectra, while ATLAS9 does not. It appears that these molecular absorptions may be important in predicting accurate colors, especially in the optical.


\subsection{M67} \label{sec:m67_resid}

\begin{figure}
\includegraphics[trim= 0mm 10mm 0mm 0mm, clip, width=0.99\textwidth]{../plots/eps/ridgeline_m67.eps}
\caption[Isochrone-to-empirical ridgeline residuals for M67]{Same as figure \ref{fig:m37_resid}, but for M67. All isochrones are 3.5 Gyr, with [Fe/H] = +0.01, E($B-V$) = 0.04, at a distance of 855 pc. \label{fig:m67_resid}}
\end{figure}

Most of the isochrone behaviors noted for M37 and NGC 2420 also appear for M67, shown in figure \ref{fig:m67_resid}. A notable difference from the previous two clusters is the erratic behavior of the Y$^2$ isochrones for low mass stars. Y$^2$ isochrones predict slightly bluer colors than observed for most low mass stars, similar to the other isochrone systems, but then quickly shift to predicting far \emph{redder} colors than observed for stars $< 0.5$ M$_\odot$. While this behavior is most apparent for isochrones with the BT-Settl atmosphere, a similar behavior is observed in ATLAS9 isochrones as well. The ATLAS9 color grid does not exist for stars with temperatures less than 3500K, truncating ATLAS9 Y$^2$ isochrones just above 0.5 M$_\odot$. Referring back to figures \ref{fig:m37_resid} and \ref{fig:n2420_resid}, similar behavior can be noted.

Y$^2$ isochrones are calibrated to low-mass stars in the open clusters Melotte 22 (Pleiades) and IC 2391, with well-matching colors. In the comparisons to observation above, the Y$^2$ isochrones are paired with an alternate atmosphere model. While low-mass Y$^2$ isochrones may match low-mass stars when paired with the original color-temperature relation, they may not with other atmosphere models. This point illustrates the need to divorce the underlying stellar structure model with the atmosphere, such that interplays between the two will not mask model deficiencies. There does not appear to be any underlying physics or code changes around $0.5 - 0.7$ M$_\odot$, but the Y$^2$ stellar structure model seems to create stellar cores that have higher temperatures than observed.


\section{Isochrone Adjustment}

\S\ref{sec:m37_resid} - \ref{sec:m67_resid} highlighted some of the problems with popular isochrone systems, found very few underlying parameters than increase fit quality. Overall, the Dartmouth stellar structure model and the BT-Settl atmosphere code fit most closely to the open clusters in the analysis set. Even this configuration deviates from the observed empirical ridgeline by 0.1 or more, in color. While \binocs improves upon current binary-detection techniques by lowering dependence on inclination, orbital period, and observational uncertainty, these improvements are traded for complete dependence upon the underlying isochrone model, as well as intrinsic cluster parameters such as distance and reddening. Even a 0.1 shift in color between observation and model will throw off any accurate mass determination.

Because no isochrone model accurately fits observation, the underlying models are adjusted to match by introducing a custom color-temperature relation. Before the isochrone is read into the \binocs code, the bolometric-correction to $r$, and hence the $r$ magnitude, is assumed to be ``correct,'' and all other colors are adjusted to those in the previously-determined empirical ridgeline. For stars not on the main sequence, where the empirical ridgeline does not exist, colors are shifted in order to keep the isochrone ridgeline continuous.

By manually adjusting the colors of the underlying isochrones, the \binocs code is freed from much of the dependence on the underlying physics of the isochrone models. All future analysis will use the PARSEC isochrone system due to the fact that the lowest mass model in the isochrone is 0.13 M$_\odot$, the lowest of all systems considered. While PARSEC is the worst-fitting isochrone system, all deviations are removed in the adjustment to the empirical color values.











