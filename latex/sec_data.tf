\chapter{Data Overview} \label{sec:data}

\section{Instrumentation and Processing}

\subsection{Visual Wavelength Detectors}
Astronomy was ushered into a new era in 1979 when the first charge-coupled device (CCD) detector was installed on the 1-meter telescope at Kitt Peak National Observatory. Before this, photographic plates had been the standard, but the new CCD cameras were much more efficient, allowing the detection of fainter objects than even the best photographic plates.

A CCD detector is an array of individual CCDs that make up the pixels of the camera. CCDs use a layer of silicon as the main optical element, so when a photon strikes the silicon, an electron is excited to the conduction band and transferred to a ``gate'' where the charge is stored. When an image is ready to be read out, the first row in the array dumps its charge into a charge amplifier, converts that charge to a voltage, and stores that voltage as a numerical value for that pixel. Once the first row is completely converted, an electric field is applied to transfer the charge from the second row into the first, where it is then read out. This process continues until all rows of the chip have been counted.

Silicon has a band gap height of roughly 1.0 eV, depending on temperature. This corresponds to a photon with a wavelength of 1240 nm, around the location of the $J$ filter. Photons with wavelengths greater than this (most of the infrared range) will not be able to excite an electron to the conduction band, and therefore different types of detectors must be used for infrared filters.

\subsection{Infrared Wavelength Detectors}\label{sec:IRDet}
IR detectors function similarly to CCDs. A semiconductor is struck by a photon, exciting it to the conduction band and transferring the charge. Instead of storing the charge in a gate and reading out all pixels at the end of an exposure, each pixel of a IR detector has its own readout amplifier. As charge accumulates, the amplifier keeps track of the accumulated voltage, and results can be accessed and stored when required. Reads of the chip are \emph{non-destructive}, meaning that the accumulated charge is not altered by measuring a pixel's value, much different than for a CCD. IR detectors allow for reading out only parts of a chip, or reading out a chip multiple times throughout an exposure.

There are several different types of semiconductors used in IR detectors. Mercury cadmium telluride (HgCdTe) detectors have a band gap of 0.5 eV, corresponding to a limiting photon wavelength of 2500 nm, making them ideal for near-IR studies. Another choice is indium antimonide (InSb) which has a band gap of 0.25 eV (5000 nm), allowing for use in the near- and part of mid-IR range. For further mid-IR filters, silicon arsenide (SiAs) detectors are ideal due to their very small band gap of 48 meV (25 $\mu$m).


\subsection{Image Reduction}
To prepare a science image for analysis, the following corrections must first be made to account for a variety of instrumental effects. As CCDs and IR detectors function differently, each correction will be labelled with the type(s) of detectors it needs to be applied to.\\

\noindent \textbf{Bias Correction [CCD]:} To transfer charge between rows in a CCD, an electric field is applied. The energy stored in this electric field may cause extra electrons to be excited as the charge migrates across the chip. These extra electrons are not part of the signal, and must be corrected out. To remove them, the chip is read out multiple times in succession without exposing. These ``0 second'' bias images will show no counts besides those from the charge transfer process. Bias frame counts are subtracted from all images. \\

\noindent \textbf{Dark Current [CCD, IR]:} The detector is usually cooled to liquid nitrogen temperatures, but this still leaves some thermal energy that can excite an electron within the detector to the conduction band. Additionally, there may be defects on the chip that cause some pixels to register large counts regardless of where they are pointed, called \emph{hot pixels}.

To correct for this, an image is taken with the shutter closed, ideally of the same exposure length as the science images. Because no light from the sky hits the chip, all the detected counts are from the electronics themselves. Averaging several of these \emph{dark frames}, after subtracting bias counts, will determine the average thermal excitation counts for each pixel as well as other electronic defects. Dark frames are subtracted from all images. \\

\noindent \textbf{Flat Fielding [CCD, IR]:} When a photon strikes a pixel of the detector, an electron will not always be excited and recorded for that pixel. The percent chance that an incoming photon will register a count with the detector is called the \emph{quantum efficiency}. The quantum efficiency of a CCD detector is usually above 90\%, but it is not always the same for each pixel. In addition, the filter being used may not be manufactured perfectly or there may be dust grains lying on the various surfaces of the telescope. Imperfections of the filter may cause light to be refracted in unintended ways, limiting the effectiveness of certain pixels on the chip. This effect is lumped into each pixels' overall efficiency.

Correcting for this effect can be accomplished in two ways. First, the telescope can be pointed at a flat surface that is uniformly lit by a lamp, or multiple lamps. The resulting image, called a \emph{flat field}, should have identical counts for all pixels, but due to the non-uniform efficiency, some pixels will register fewer counts.

The lamps used for flat-fielding have a specific temperature, so the flux through some filters may not be very high (for example, $U$ and $B$ filters). Instead of using the lamps, the telescope is pointed at several different points in the sky and images are taken. If the images are taken high enough in the sky, away from high light pollution areas near the horizon, the photon counts from the sky should be roughly constant. Combining these multiple images using a median will create a \emph{sky flat}, removing any stars in the frames and leaving only a sky background. Similar to the flat field image, this sky flat should be uniform, but some pixels will register fewer counts due to lowered efficiency.

Once the flat image is taken (be it a flat field or sky flat), the bias and dark frame are subtracted (to remove electronic effects), and it is then normalized. In the normalized image, each pixel's value represents its efficiency. The science image counts are divided by the normalized flat field to bring all pixels to the same effective level. Analogous to dark frames, which correct for effects from the electronics, flat fielding corrects for effects within the optical elements of the system.


\subsection{Magnitude Measurements} \label{sec:mag_measuring}
Measuring star brightnesses, and thus magnitudes, from images is accomplished through a process called \emph{photometry}. There are two different approaches to photometry, described below. \\

\begin{figure}
\begin{center}
\includegraphics[width=0.37\textwidth]{../plots/jpg/aperture_phot_m67.jpg}
\includegraphics[width=0.37\textwidth, trim=0mm 3mm 0mm 0mm, clip]{../plots/jpg/aperture_phot_m37.jpg}
\caption[Example of aperture photometry]{\emph{Left:} Aperture photometry set-up for observed star in the cluster M67. Blue circle is the image circle, green circles are edges of sky annulus. \emph{Right:} Failure of aperture photometry in the dense cluster M37. No reasonable image circle can be drawn without being contaminated by nearby star. \label{fig:aperturephot}}
\end{center}
\end{figure}

\noindent \textbf{Aperture Photometry:} This technique uses three circles, called apertures, to determine the number of photons from a star. The setup of the three apertures for a fictional star is shown in figure \ref{fig:aperturephot}. The innermost circle, called the \emph{image circle}, is centered on the star and has a radius such that it encloses the entire image of the star. The number of photon counts within this circle come from two effects: photons coming from the star itself, as well as scattered photons from the sky background. To remove these sky photons, the next two circles are used to form a ring, called the \emph{sky annulus}. The counts within the sky annulus are assumed to all come from the sky background, because there are no stars enclosed, and is used to determine the average number of sky photons per pixel in the image. Using this information, sky photon counts can be removed from the image circle, leaving only a count of photons from the star.

The benefit of this technique is that it is simple to do, and fast to compute. The only input parameters are the three circle radii, and a computer can determine magnitudes for thousands of stars very quickly. This technique breaks down, however, when stars are too close together for any sky annulus to accurately determine sky photon counts, or if the field is so dense that stars begin to overlap, as seen in the right-hand panel of figure \ref{fig:aperturephot}. For sparse fields, aperture photometry is the most efficient way to determine magnitudes. \\

\noindent \textbf{PSF Photometry:} Diffraction due to light passing through the aperture of the telescope produces a pattern called an \emph{Airy disk}. Point-source function (PSF) photometry measures the magnitude of a star by fitting a mathematical function (Gaussian / Lorentzian) to the Airy disk, then integrating over it to find the total photon counts. Figure \ref{fig:PSFPhot} shows an example of a PSF fitting. In both cases, the sky background is roughly 100 counts, setting the baseline of the gaussian fit function. The power of PSF photometry is shown in the right hand panel of figure \ref{fig:PSFPhot}, where two stars in the frame partially overlap. Aperture photometry can not handle crowded fields, but PSF fittings are able to separate partially overlapping brightness profiles, allowing accurate magnitudes in dense environments. This approach is especially useful for clusters, where the density of stars is higher than in the field.

\begin{figure} \centering
\includegraphics[trim= 5mm 5mm 5mm 100mm, clip, width=0.8\textwidth]{../plots/eps/psf_phot.eps}
\parbox{0.9\textwidth}{\caption[Example of PSF photometry]{Brightness profiles along a single row of a chip. \emph{Left:} Gaussian fitting to a single star, sky background of $\sim$ 100 counts. \emph{Right:} Gaussian fitting of two overlapping stars, sky background of $\sim$ 100 counts. Blue curve is sum of both purple individual star gaussian fits.\label{fig:PSFPhot}}}
\end{figure}

PSF photometry involves first selecting a number of ``template'' stars, with which to calculate the mathematical form of the PSF. Using these templates, the parameters of the PSF, as well as how they may vary with position, are determined via a $\chi^2$ minimzation. The PSF photometry in this project was completed using the DAOPHOT suite of programs: DAOPHOT II and ALLSTAR \citep{1987PASP...99..191S}. DAOPHOT allows variation of PSF parameters linearly or quadratically across the chip, as well as the option to use a gaussian, lorentzian, or sum of both as the shape for the PSF. In most cases, around 3\% of the total detected sources are initially used as template stars for the PSF. This list of template stars was then pruned to remove stars which degraded the fit.

First, stars near bad or saturated pixels were removed, so as not to alter the PSF fit with these outliers. Next, stars that were less than 4 full-widths at half-maximum (FWHM; a measure of the width of the PSF) from another source were removed. While PSF photometry can handle overlaps, template stars are assumed to be individual sources. Lastly, stars whose PSF $\chi^2$ fit values were 2$\sigma$ or more above the mean were removed, as they clearly did not fit the general profile of the other candidate template stars.

PSF parameters are determined by fitting a PSF profile to the pruned list of template stars. After the PSF parameters are determined, it is applied to all sources in the image, with only the amplitude being varied. Integrating over the PSF gives the flux, and thus the magnitude, of each star in the image.




\section{Cluster Sample}
In total, 16 clusters were targeted for use in this work. The distribution of cluster parameters for our targeted sample is shown in table \ref{tab:clusterParameters}, and visually in figure \ref{fig:clusterParameters}.

\begin{figure} \centering
\includegraphics[trim= 0mm 120mm 0mm 0mm, clip, width=0.7\textwidth]{../plots/eps/cluster_distribution.eps}
\parbox{0.85\textwidth}{\caption[Distribution of cluster sample ages and metallicities]{Distribution of 16 targeted clusters in age and [Fe/H] \citep{2002AA...389..871D}. X's represent clusters which do not have any published metallicity information. Points in grey correspond to clusters with ages $< 500$ Myr, usable for primordial binary studies. \label{fig:clusterParameters}}}
\end{figure}

\begin{table} \centering \small
\begin{tabular}{|l|c|c|c|c|}
\hline \textbf{Cluster} & \textbf{Age (Gyr)} & \textbf{[Fe/H]} & \textbf{Distance (pc)} & \textbf{E(B-V)} \\ \hline \hline
NGC 1960 (M36) & 0.03 &  ...  & 1320 & 0.22 \\
NGC 2168 (M35) & 0.13 & -0.21 &  870 & 0.20 \\
NGC 1912 (M38) & 0.29 & -0.11 & 1070 & 0.25 \\
NGC 2099 (M37) & 0.35 & +0.08 & 1390 & 0.30 \\
NGC 1817       & 0.41 & -0.26 & 1980 & 0.33 \\
NGC 1039 (M34) & 0.51 & -0.30 &  500 & 0.07 \\
NGC 2158       & 1.10 & -0.23 & 5080 & 0.36 \\
IC 4651        & 1.10 & +0.10 & 1050 & 0.00 \\
NGC 2420       & 2.00 & -0.23 & 2500 & 0.03 \\
NGC 6819       & 2.80 & +0.07 & 2400 & 0.13 \\
Melotte 66     & 2.80 & -0.40 & 5250 & 0.00 \\
NGC 2682 (M67) & 3.50 & +0.01 &  860 & 0.04 \\
NGC 188        & 6.30 & -0.02 & 1820 & 0.06 \\
Berkeley 39    & 7.90 & -0.20 & 5750 & 0.00 \\
NGC 6791       & 8.00 & +0.38 & 4170 & 0.15 \\
Collinder 261  & 8.90 & -0.02 & 3160 & 0.00 \\ \hline
\end{tabular}
\caption[Dataset cluster parameters]{Cluster parameters for all clusters in dataset \citep{2002AA...389..871D}. \label{tab:clusterParameters}}
\end{table}

The cluster sample covers a large area of the parameter space: ages range from 25 Myr to 9 Gyr while [Fe/H] varies from $-0.38$ to $+0.32$ --- 40\% to 200\% the Iron content of the Sun. Exploiting this parameter range is critical in answering the posed science questions. In reference to science question 1, there are five clusters with ages $< 500$ Myr. Using \binocs results from these five clusters, an understanding of the primordial cluster binary population can be conceived.


\section{Available Data} \label{sec:photData}
Data that will be used in this project were compiled from a number of sources.

\subsection{Optical Data Sources [0.3 -- 1.0 $\mu$m]} \label{sec:optData}

\noindent \textbf{Sloan Digital Sky Survey (SDSS):} Beginning operations in 2000, the SDSS Legacy Survey aimed to provide uniform and well-calibrated photometry for much of the northern sky. Observations were taken using the Sloan 2.5m telescope at Apache Point Observatory (APO) \citep{2006AJ....131.2332G}. To efficiently cover large contiguous areas of sky, SDSS observations were taken using a technique called \emph{drift scanning}. In drift scanning, the telescope is kept stationary as the stars move horizontally across the chip over time. The CCD chip is read out at exactly the same speed as the stars move across a single pixel, allowing for the electrons from a star to track with it. While a star may only be located on a single pixel for less than a second, the final image will have an integrated exposure length of almost a minute.

SDSS imaged the sky using five different filters, $ugriz$, and to do so built one of the most complex cameras in all of astronomy, shown in figure \ref{fig:SDSSCam}. Each column of the camera contains 5 CCD chips, each with a different SDSS filter above it. A star would move across the column of chips (top to bottom in the figure), being imaged through each of the five filters in quick succession. To cover large areas of sky at a time, the camera contained six of these filter columns.

\begin{figure} \centering
\includegraphics[width=0.9\textwidth]{../plots/jpg/SDSSCam.jpg}
\parbox{0.8\textwidth}{\caption[SDSS telescope and camera]{\emph{Left:} SDSS 2.5m telescope at APO.$^1$ \emph{Right:} SDSS Legacy Survey camera.$^2$ \label{fig:SDSSCam}}}
\end{figure}

\addtocounter{footnote}{1}
\footnotetext[\value{footnote}]{http://astro.uchicago.edu/$\sim$frieman/SDSS-telescope-photos/sdss-telescope.jpg}
\addtocounter{footnote}{1}
\footnotetext[\value{footnote}]{http://www.sdss.org/dr3/instruments/imager/faceplat.gif}

From 2000 to 2008, the SDSS Legacy Survey imaged more than 8200 square degrees of sky, covering several of the clusters in this project \citep{2009ApJS..182..543A}. Magnitudes released from SDSS were measured using aperture photometry; such a large area of sky required the least computationally costly approach. Most of the region imaged by the Legacy Survey was in the low density halo of the Milky Way, where aperture photometry works accurately.

Magnitudes for stars in the densely packed globular and open clusters in the imaged region were unable to be measured accurately by the aperture photometry technique. \citet{2009ApJ...700..523A} re-derived magnitudes for several globular and open clusters within the Legacy Survey region using PSF photometry. The open clusters NGC 2682 (M67), NGC 2420 and NGC 6791 were included in this imaged area, with PSF magnitudes measured down to $g$ $\sim 23$. \\

\noindent \textbf{MOSAIC:} The MOSAIC instrument \citep{2010SPIE.7735E..3AS}, outfitted with $UBVRI$ filters, contains an array of eight 2048-by-4096 pixel CCD chips to create a single 8192-by-8192 pixel image. While it has been attached previously to the 4-m telescope at Kitt Peak National Observatory (KPNO), the data used in this project is from the WIYN 0.9-m telescope at KPNO. With roughly a square degree field of view, the MOSAIC images will allow us to analyze the entire spatial extent of any cluster observed.

Images of several open clusters were obtained with MOSAIC over several nights in Feb 2000 (Sarajedini \& Kinemuchi, \emph{private comminucation}). $UBVI$ photometry was obtained on five clusters in the same set: M35, M36, M37, M38, M67. For all clusters, both short and long sequences of images were taken. Short images had exposure lengths of 25s, 8s, 5s, 5s in $UBVI$, respectively. Four images of the same exposure length were taken in each filter. Long sequence images, also four per filter, had 10 times the exposure length of the short set: 250s, 80s, 50s, 50s. Using both sequences together allows for photometry of the brightest and faintest stars within the cluster.

\begin{figure} \centering
\includegraphics[width=0.7\textwidth]{../plots/jpg/mosaic_image.png}
\caption[Example MOSAIC image]{Reduced MOSAIC 50s $I$-band image for M36.\label{fig:mosaic_image}}
\end{figure}

Three of the clusters have already been analyzed: M35 in \citet{2014AJ....148...85T}, and M36 and M38 at TCU. For the TCU analysis, the four images in each filter were combined to form a higher signal-to-noise master image, and to provide a complete covering of the cluster. Note the wide gap between chips in the individual MOSAIC images, shown in figure \ref{fig:mosaic_image}. Each of the four images per filter were \emph{dithered} (slightly offset) such that the combined image had no gaps in coverage. 

These master images were then split into the 8 individual chips on the MOSAIC image. This splitting was done to accomodate the DAOPHOT PSF photometry package, which has limits on image size. The individual 2k$\times$4k chips were the largest DAOPHOT could handle. In each chip (and for each master image), the process was the same. First, 400 candidate template stars were chosen to create a PSF. Next, the trimming process described in \S\ref{sec:mag_measuring} was run, trimming the candidate list down to 250-300 template stars. Using this cleaned list, PSF parameters were determined, and then applied through ALLSTAR.

Photometric quality plots for the short and long sets are shown in figure \ref{fig:mosaic_quality}. For reference, high quality photometry has uncertainties less than 0.05. The MOSAIC images provide this high quality data for $11 \le V \le 20$, covering nearly all of the stars within these clusters.

\begin{figure} \centering
\includegraphics[width=0.49\textwidth]{../plots/eps/mosaic_quality_short.eps}
\includegraphics[width=0.49\textwidth]{../plots/eps/mosaic_quality_long.eps}
\caption[MOSAIC photometric quality plots]{MOSAIC photometric quality plots for M36 in $UBVI$. \emph{Left:} Short set of exposures. \emph{Right:} Long set of exposures. \label{fig:mosaic_quality}}
\end{figure}

The ALLSTAR-derived magnitudes must be transformed to a standard system, in order to be comparable to other results. For calibration, photometry from the individual chips were re-combined to produce single photometry files for each master image, then matched to previously published ``standard'' photometry. For M36, the previously published $UBVI$ photometry from \citet{2006AJ....132.1669S} was used to transform the instrumental MOSAIC magnitudes to the standard system. The only published optical photometry on M38 is in \citet{2007PASJ...59..547P}, which only contains $BVI$ photometry. $U$ magnitude data was discarded for M38. 

Sources detected in the MOSAIC images were matched to the published photometry for each cluster, producing between $500-600$ matches for each filter. Using these common stars, the instrumental ALLSTAR magnitudes were transformed via the following equations: 

\begin{equation} \label{eq:Utrans}
	u = U + a_U + b_U \times (U-B)
\end{equation}
\begin{equation} \label{eq:Btrans}
	b = B + a_B + b_B \times (B-V)
\end{equation}
\begin{equation} \label{eq:Vtrans}
	v = V + a_V + b_V \times (B-V)
\end{equation}
\begin{equation} \label{eq:Itrans}
	i = I + a_I + b_I \times (V-I)
\end{equation}

\begin{table} \centering \small
\begin{tabular}{|ccc|cc|} \hline
Cluster & Filter & Length & a & b \\ \hline \hline
\multirow{8}{*}{M36} 
	& \multirow{2}{*}{$U$} & Short & $1.843 \pm 0.009$ & $0.008 \pm 0.011$ \\ & & Long & $-0.650 \pm 0.010$ & $-0.053 \pm 0.008$ \\ \cline{2-5}
	& \multirow{2}{*}{$B$} & Short & $1.191 \pm 0.004$ & $-0.105 \pm 0.005$ \\ & & Long & $-1.305 \pm 0.005$ & $-0.127 \pm 0.006$ \\ \cline{2-5}
	& \multirow{2}{*}{$V$} & Short & $1.536 \pm 0.003$ & $0.048 \pm 0.004$ \\ & & Long & $-0.928 \pm 0.005$ & $0.034 \pm 0.006$ \\ \cline{2-5}
	& \multirow{2}{*}{$I$} & Short & $1.993 \pm 0.004$ & $0.002 \pm 0.004$ \\ & & Long & $-0.562 \pm 0.011$ & $-0.000 \pm 0.011$ \\ \hline
\multirow{6}{*}{M38} 
	& \multirow{2}{*}{$B$} & Short & $1.390 \pm 0.006$ & $-0.245 \pm 0.009$ \\ & & Long & $-0.976 \pm 0.005$ & $-0.254 \pm 0.006$ \\ \cline{2-5}
	& \multirow{2}{*}{$V$} & Short & $1.668 \pm 0.005$ & $-0.063 \pm 0.006$ \\ & & Long & $-0.254 \pm 0.005$ & $-0.051 \pm 0.005$ \\ \cline{2-5}
	& \multirow{2}{*}{$I$} & Short & $2.061 \pm 0.005$ & $-0.120 \pm 0.005$ \\ & & Long & $-0.392 \pm 0.006$ & $-0.083 \pm 0.015$ \\ \hline
\end{tabular}
\caption[MOSAIC transformation coefficients]{Transformation coefficients for MOSAIC photometry.\label{tab:mosaic_coeffs}}
\end{table}

Here, lowercase filter letters indicate instrumental (ALLSTAR-derived) magnitudes, while uppercase filters are those of the standard photometry. The transformation coefficients for each cluster and filter are located in table \ref{tab:mosaic_coeffs}. Transformations were done separately for the short and long exposure sequences. Residuals for these transformations are shown in figure \ref{fig:mosaic_resid}. Once the instrumental magnitude were calibrated to the standard system, all photometry was combined into a single master catalog. 

\begin{figure} \centering
\includegraphics[width=0.6\textwidth]{../plots/eps/mosaic_resid.eps}
\parbox{0.7\textwidth}{\caption[MOSAIC transformation residuals]{Residuals from transformation to standard system for M36 MOSAIC photometry. \label{fig:mosaic_resid}}}
\end{figure}


\subsection{Near-Infrared Data Sources [1.0 -- 2.5 $\mu$m]}
\noindent \textbf{2-Micron All Sky Survey (2MASS):} Similar to the goals of SDSS Legacy Survey, 2MASS aimed to observe the entire sky in the near-IR and catalog all detected stars and galaxies \citep{2006AJ....131.1163S}. To image the entire sky, 2MASS utilized two different observatories: Mt. Hopkins in Arizona for the northern hemisphere, and Cerro Tololo Inter-American Observatory (CTIO) in Chile for the southern hemisphere. Beginning operations in 1997, 2MASS achieved its goal by 2001; covering over 99\% of the sky, and cataloging more than 300 million point sources.

\begin{figure} \centering
\includegraphics[width=0.6\textwidth]{../plots/jpg/2MASSCam.png}
\parbox{0.8\textwidth}{\caption[2MASS instrumentation diagram]{Diagram of 2MASS Camera. Each filter is labeled.\label{fig:2MASSCam}}}
\end{figure}

Each 2MASS telescope utilized a custom camera in order to efficiently image the sky using all 3 near-IR filters ($JHK_S$). Instead of revisiting the same area of sky three times, the 2MASS instrument observed using all three filters in parallel. Incoming light is split using a dichroic for the $J$ filter. Light below a certain wavelength is reflected to the $J$ filter camera, while the rest of the light is transmitted. Another dichroic, this time for the $H$ filter, splits the remaining light to the $H$ and $K_S$ filters. Each filter is coupled with a HgCdTe IR detector. Using this setup, shown in figure \ref{fig:2MASSCam}, each field can be observed in all filters under the same conditions. 

While 2MASS provides near-IR photometry for all of the clusters in our study, the data set is \emph{shallow} --- it only contains fairly bright stars --- with limiting magnitudes in $JHK_S$ of 16, 15, and 14.5, respectively. These magnitude cut-offs limit the effectiveness of 2MASS for low-mass stars within clusters, and for distant clusters. 2MASS photometry must be supplemented by other, deeper, near-IR data. \\

\noindent \textbf{NOAO Extremely Wide Field Infrared Imager (NEWFIRM):} NEWFIRM is a 1-2.4 $\mu$m IR camera, containing 2MASS $JHK_S$ filters, and located on the Mayall 4-m telescope at KPNO \citep{2004SPIE.5492.1716P}. NEWFIRM consists of a grid of four 2048-by-2048 InSb detectors to create a 4096-by-4096 image, as shown in the left panel of figure \ref{fig:newfirm_image}. NEWFIRM's field of view is a quarter of a square degree (half degree on each side), however this only covers a portion of some of the largest clusters within the sample. To cover the total spatial extent of the cluster, NEWFIRM images were taken in ``4Q'' mode, which takes four images of the cluster with the center of the cluster located in the center of each chip. A diagram of the four pointings for ``4Q'' mode is shown in figure \ref{fig:newfirm_4q}. ``4Q'' mode increases the imaged spatial extent to 43$^\prime$ on each side, enough to cover the large clusters in the sample.

\begin{figure} \centering
\includegraphics[width=0.5\textwidth]{../plots/jpg/newfirm_4q.jpg}
\parbox{0.7\textwidth}{\caption[NEWFIRM 4Q-mode description]{Diagram of NEWFIRM's ``4Q'' mode. Cluster is centered in each of the four NEWFIRM chips for each image. \label{fig:newfirm_4q}}}
\end{figure}

Several clusters within the sample were observed with NEWFIRM by TCU over several different runs. An observing log is shown in table \ref{tab:newfirm_obs}.

\begin{table} \centering \small
\begin{tabular}{|c|c|ccc|} \hline
Date & Cluster & Filter & Exposure Time & Notes \\ \hline \hline
\multirow{3}{*}{26 Feb 2008} & \multirow{3}{*}{NGC 2682 (M67)} 
		& $J$ & 40$\times$60s & ``4Q'' mode \\
		& & $H$ & 40$\times$60s & ``4Q'' mode \\
		& & $K_S$ & 60$\times$60s & ``4Q'' mode \\ \hline
\multirow{6}{*}{27 Feb 2008} & \multirow{3}{*}{NGC 2099 (M37)} 
		& $J$ & 40$\times$60s & ``4Q'' mode \\
		& & $H$ & 40$\times$60s & ``4Q'' mode \\
		& & $K_S$ & 60$\times$60s & ``4Q'' mode \\ \cline{2-5}
	& \multirow{3}{*}{NGC 2168 (M35)} 
		& $J$ & 40$\times$60s & ``4Q'' mode \\
		& & $H$ & 40$\times$60s & ``4Q'' mode \\
		& & $K_S$ & 60$\times$60s & ``4Q'' mode \\ \hline
\multirow{9}{*}{2 Feb 2013} & \multirow{3}{*}{NGC 1960 (M36)} 
		& $J$ & 10$\times$60s & \\
		& & $H$ & 10$\times$60s & \\
		& & $K_S$ & 15$\times$60s & \\ \cline{2-5}
	& \multirow{3}{*}{NGC 2420} 
		& $J$ & 20$\times$60s & \\
		& & $H$ & 20$\times$60s & \\
		& & $K_S$ & 30$\times$60s & \\ \cline{2-5}
	& \multirow{3}{*}{NGC 1912 (M38)} 
		& $J$ & 10$\times$60s & \\
		& & $H$ & 10$\times$60s & \\
		& & $K_S$ & 15$\times$60s & \\ \hline
\multirow{6}{*}{25 Nov 2013} & \multirow{3}{*}{NGC 1817} 
		& $J$ & 20$\times$60s & \\
		& & $H$ & 20$\times$60s & \\
		& & $K_S$ & 30$\times$60s & \\ \cline{2-5}
	& \multirow{3}{*}{Berkeley 39} 
		& $J$ & 50$\times$60s & \\
		& & $H$ & 30$\times$60s & \\
		& & $K_S$ & 40$\times$60s & \\ \hline
\multirow{6}{*}{26 Nov 2013} & \multirow{3}{*}{NGC 188} 
		& $J$ & 20$\times$60s & \\
		& & $H$ & 20$\times$60s & \\
		& & $K_S$ & 30$\times$60s & \\ \cline{2-5}
	& \multirow{3}{*}{NGC 2158} 
		& $J$ & 15$\times$60s & \\
		& & $H$ & 15$\times$60s & \\
		& & $K_S$ & 15$\times$60s & \\ \hline
\end{tabular}
\caption[NEWFIRM observing log]{NEWFIRM observing logs for all runs. Original 2008 data taken in ``4Q'' mode, while all other clusters were small enough to fit into a single NEWFIRM field of view. \label{tab:newfirm_obs}}
\end{table}

\begin{figure} \centering
\includegraphics[width=0.465\textwidth]{../plots/jpg/newfirm_single_image.png}
\includegraphics[width=0.47\textwidth]{../plots/jpg/newfirm_stacked_image.png}
\caption[Example NEWFIRM images]{Examples of NEWFIRM images. \emph{Left:} Single 60s $J$-band image of M37, covering a 27$^\prime\times$27$^\prime$ field of view. Note the large chip gaps, and the centering of M37 within a single NEWFIRM chip. \emph{Right:} Master stacked image of M37 in $J$, covering a larger 44$^\prime\times$44$^\prime$ field of view. \label{fig:newfirm_image}}
\end{figure}

The NEWFIRM images were reduced at TCU using a similar approach to that of the MOSAIC data. First, all images on a cluster were combined to form three master images, one for each filter. A master stacked image of M37 $J$-band data is shown in the right-hand panel of figure \ref{fig:newfirm_image}. Each of the master images were run through DAOHPOT and ALLSTAR to produce magnitudes. Initially, 2000 candidate PSF stars were chosen for ``4Q'' mode images, and 1000 candidate PSF stars for non-``4Q'' images. This list of candidates was trimmed using the procedure outlined in \S\ref{sec:mag_measuring}. After trimming, between 700 and 1200 stars were left to determine a PSF. The PSF was then applied to all sources through ALLSTAR. 

A plot of uncertainty as a function of stellar magnitude is shown in figure \ref{fig:newfirm_phot}. For reference, high quality photometry is usually any source with a uncertainty under 0.05, and any source with an uncertainty under 0.1 is considered acceptable for use. 2MASS magnitudes end around $J \sim 15.5$, with high-quality NEWFIRM sources extending another 2.5 magnitudes deeper. The NEWFIRM photometry will allow probing of very low-mass stars in the near-IR.

\begin{figure} \centering
\includegraphics[width=0.49\textwidth, trim=0mm 40mm 0mm 0mm, clip]{../plots/eps/newfirm_quality.eps}
\includegraphics[width=0.49\textwidth, trim=0mm 40mm 0mm 0mm, clip]{../plots/eps/newfirm_resid.eps}
\caption[NEWFIRM photometric quality plots]{\emph{Left:} Plot of NEWFIRM photometric quality for the cluster M37. \emph{Right:} Plot of residuals in the transformation between ALLSTAR-derived magnitudes and 2MASS standards for M37. \label{fig:newfirm_phot}}
\end{figure}

NEWFIRM instrumental magnitudes were tied to the standard system using 2MASS photometry. The NEWFIRM sources were matched to `AAA'-quality 2MASS sources, meaning the magnitude measurement was deemed the best level possible in all 3 bands. The number of overlapping stars was significant for each of the reduced clusters, varying between 700 and 2000 stars, depending on cluster density and imaging spatial coverage. Using these overlapping stars, transformation equations were determined:

\begin{equation} \label{eq:Jtrans}
	j = J + a_J + b_J \times (J-K_S)
\end{equation}
\begin{equation} \label{eq:Htrans}
	h = H + a_H + b_H \times (H-K_S)
\end{equation}
\begin{equation} \label{eq:Ktrans}
	k_S = K_S + a_K + b_K \times (J-K_S)
\end{equation}

\begin{table} \centering
\begin{tabular}{|c|c|c|c|} \hline
Cluster & $J$ & $H$ & $K_S$ \\ \hline \hline
\multirow{2}{*}{NGC 2168 (M35)} & $a_J = 2.397 \pm 0.003$ & $a_H = 2.297 \pm 0.002$ & $a_K = 3.030 \pm 0.005$ \\ & $b_J = -0.099 \pm 0.005$ & $b_H = -0.296 \pm 0.012$ & $b_K = 0.093 \pm 0.007$ \\ \hline
\multirow{2}{*}{NGC 1960 (M36)} & $a_J = 2.441 \pm 0.004$ & $a_H = 2.620 \pm 0.003$ & $a_K = 3.063 \pm 0.004$ \\ & $b_J = -0.056 \pm 0.006$ & $b_H = -0.177 \pm 0.018$ & $b_K = 0.042 \pm 0.006$ \\ \hline
\multirow{2}{*}{NGC 2099 (M37)} & $a_J = 2.434 \pm 0.004$ & $a_H = 2.318 \pm 0.003$ & $a_K = 3.020 \pm 0.005$ \\ & $b_J = -0.121 \pm 0.008$ & $b_H = -0.354 \pm 0.016$ & $b_K = 0.113 \pm 0.009$ \\ \hline
\multirow{2}{*}{NGC 1912 (M38)} & $a_J = 3.004 \pm 0.004$ & $a_H = 2.973 \pm 0.003$ & $a_K = 3.547 \pm 0.004$ \\ & $b_J = -0.058 \pm 0.006$ & $b_H = -0.233 \pm 0.016$ & $b_K = 0.039 \pm 0.007$ \\ \hline
\multirow{2}{*}{NGC 2682 (M67)} & $a_J = 2.445 \pm 0.007$ & $a_H = 2.277 \pm 0.004$ & $a_K = 2.956 \pm 0.010$ \\ & $b_J = -0.100 \pm 0.010$ & $b_H = -0.250 \pm 0.021$ & $b_K = 0.113 \pm 0.014$ \\ \hline
\multirow{2}{*}{NGC 2420}       & $a_J = 2.752 \pm 0.005$ & $a_H = 2.739 \pm 0.003$ & $a_K = 3.179 \pm 0.006$ \\ & $b_J = -0.036 \pm 0.008$ & $b_H = -0.234 \pm 0.020$ & $b_K = 0.130 \pm 0.011$ \\ \hline
\end{tabular}
\caption[NEWFIRM transformation coefficients]{Transformation coefficients for NEWFIRM photometry. \label{tab:newfirm_coeffs}}
\end{table}

Here, as with the MOSAIC photometry, lowercase letters correspond to NEWFIRM instrumental magnitudes, while uppercase corresponds to 2MASS standard magnitudes. Transformation coefficients for the clusters analyzed so far are shown in table \ref{tab:newfirm_coeffs}. Residuals for the standard transformation in M37 are shown in figure \ref{fig:newfirm_phot}. After transforming each filter's photometry to the standard system, $JHK_S$ magnitudes were merged to create final photometry files for each cluster. 

Due to the width of telescope (4m) and exposure time (60s), many of the very brightest stars are saturated in the NEWFIRM images. To recover data from these stars, the NEWFIRM photometry is merged with the `AAA'-quality 2MASS sources used for calibration. 2MASS provides photometry for bright members of the cluster, where NEWFIRM is saturated, and the NEWFIRM images extend the usable photometry several magnitudes below where 2MASS is useful. \\

\noindent \textbf{Infrared Side Port Imager (ISPI):} Dr. Frinchaboy, along with collaborator Karen Kinemuchi, obtained deep near-IR data of the clusters IC 4651 and Collinder 261 taken with ISPI on the Blanco 4-m telescope at CTIO. ISPI consists of a 2048-by-2048 HgCdTe IR detector with a 10 arcminute field of view. Due to the small field of view, images cover only the core of each cluster. Photometry has been completed (Kinemuchi, \emph{private communication}), yielding magnitudes down to $J \sim 18$.

\subsection{Mid-Infrared Data [2.5 -- 10 $\mu$m]} \label{sec:mirData}
\noindent \textbf{Wide-Field Infrared Survey Explorer (WISE):} Analogous to SDSS in the optical and 2MASS in the near-IR, WISE is an all-sky survey in the mid-IR, from $2-22$ $\mu$m \citep{2010AJ....140.1868W}. Mentioned in \S\ref{sec:introFilterSystems}, atmospheric absorption beyond 2.5 $\mu$m becomes too strong to attempt observations from the ground, so the WISE telescope is located in space. Throughout its main mission lifetime, from Jan 2010 to Aug 2010, WISE imaged the entire sky in each of its four mid-IR filters: [3.4][4.6][12.0][22.0]. 

To image the entire sky in such a short amount of time, the 0.4m WISE telescope had a large 47$^\prime\times$47$^\prime$ field of view. The WISE detector is a 1024$\times$1024 SiAs detector, giving WISE a relatively large spatial resolution of 6$^{\prime\prime}$ (or worse for higher wavelength filters). For accurate mappings of stars within dense environments, a high resolution data source is needed. \\

\noindent \textbf{Infrared Array Camera (IRAC):} Deep mid-IR data in this project were taken using the \emph{Spitzer} Space Telescope's IRAC instrument \citep{2004ApJS..154...10F}, which operates with four filters: [3.6][4.5][5.8][8.0]. For the shorter wavelength IRAC filters, [3.6][4.5], an InSb IR detector is used. For longer wavelengths, InSb detectors do not work (band gap limiting wavelength of 5 $\mu$m); the two longer wavelength IRAC filters, [5.8][8.0], are fed to a SiAs detector instead.

IRAC observations were obtained of all 16 clusters in the dataset. The data were taken in High Dynamic Range (HDR) mode, which captures two images: a 1.2s image and a 30s image. The two images are then combined in order to ``fix'' saturation of bright stars in the 30s image by using data from the 1.2s image. This approach provides photometry for both bright and faint cluster stars simultaneously.

The photometry was processed utilizing the Galactic Legacy Infrared Mid-Plane Survey Extraordinaire (GLIMPSE) data pipeline \citep{2003PASP..115..953B}, which was modified to handle the HDR data. Average limiting magnitudes in each band are 18, 17, 15 and 14, respectively. The IRAC instrument provides much sharper detail than WISE, with spatial resolution of approximately 1.8$^{\prime\prime}$ in all four bands. This allows for accurate separation of sources within cluster cores.

IRAC photometry exists only for a small area around each cluster, usually 20$^\prime$ in radius. To supplement IRAC across the entire spatial extent of the cluster, it would be ideal to combine the WISE and IRAC photometry into a uniform dataset. With fairly similar central wavelengths, the WISE [3.4] and [4.6] filters are candidates to be matched to [3.6] and [4.5] IRAC filters. IRAC and WISE photometry on the cluster M37 were matched to determine a transformation between the two systems. Residuals between IRAC and WISE for the 1400 matching stars are shown in figure \ref{fig:iracwise}.

\begin{figure} \centering
\includegraphics[width=0.89\textwidth, trim=0mm 55mm 0mm 0mm, clip]{../plots/eps/iracwise.eps}
\caption[IRAC-to-WISE residuals]{Residuals between IRAC [3.6][4.5] magnitudes and WISE [3.4][4.6]. $\Delta[3]$ indicates residuals between the 3 $\mu$m bands of each instrument, while $\Delta[4]$ indicates the difference in 4 $\mu$m magnitudes. Black dots indicate stars where the transformation is valid ([3.4]$<14$ and [4.6]$<13.5$), while grey dots indicate stars outside the transformation region.\label{fig:iracwise}}
\end{figure}

For bright stars, the transformation is nearly constant, but diverges non-linearly for faint stars. For this reason, the transformation is limited to stars with $[3.4]<14$ and $[4.6]<13.5$. Within this region, [3.4] and [3.6] magnitudes are interchangeable, requiring no transformation parameters. [4.6] and [4.5] magnitudes are only slightly offset from one another, with [4.5] = [4.6] - 0.05. As seen in figure \ref{fig:iracwise}, there is no trend with color in the transformation. Using these simple transformation equations, the IRAC and WISE datasets can be merged into a master mid-IR catalog which covers the entirety of any cluster in our sample.

\subsection{Membership Data}

When taking an image of a cluster, not all stars detected within the frame are \emph{members} of that cluster. Stars that fall along the same line of sight, but are in front of or behind the cluster will be confused with cluster stars on a two-dimensional image. As the \binocs analysis assumes all stars will have similar properties, removing these contaminants is beneficial to the final \binocs results. There are two methods that can give estimates on ``membership probability'' for stars within the cluster area. \\

\noindent \textbf{Radial Velocity (RV) Data:} While RV surveys are not the most efficient method for detecting binary systems within a cluster (as described in \S\ref{sec:PastRV}), data from these studies can provide estimates of membership probability. Stars within the cluster are assumed to be moving at the same speed along the line of sight, with only a small dispersion due to their motion within the cluster. After measuring the average RVs for a large number of stars within the cluster, an estimate on the average cluster RV and cluster dispersion can be determined. Any stars outside of this range are denoted as non-members.

RV studies are also useful as tests on the \binocs results. RV surveys, by determining the variance in a star's RV over time, can flag binary and single stars within a cluster. By comparing the RV multiplicity determination to that from the \binocs routine, the accuracy of the new method can be established. Additionally, accurate mass ratios can be determined for double-lined binary systems, of which there are several within our cluster sample. \binocs mass determinations can be compared to that of the RV method. \\

\noindent \textbf{Proper Motion (PM) Data:} While RV surveys measure a star's motion along the line of sight, proper motion studies compute stellar motion along the other two axes. Proper motion studies take images of a cluster (or other region of interest) over a long time baseline --- usually years, if not decades --- and correlate star positions through time. This is most often done by matching the positions of galaxies in each of the images and assuming they have not moved; a safe assumption considering the vast distance other galaxies are from Earth. Once galaxies have been matched, shifts in star position between the two images are calculated. Proper motion velocities are then reported in arcsec/yr. Because no distances can be assumed, the angular velocity (arcsec/yr) cannot be converted into linear velocities (km/yr, pc/yr, etc.).

Just as all cluster stars are assumed to have the same RV, all stars should have the same PM (within an intrinsic dispersion due to intra-cluster motion). Once the PM of all stars are determined, the average PM in $x$ and $y$ are determined, along with an estimated scatter for the cluster. Stars outside of this two-dimensional cut are marked as non-members.

Because PM studies rely on imaging, not spectroscopy, and because they rely upon including galaxy sources within the frames, PM data is \emph{deep}. Often, PM determinations will extend to stars with $V \sim 25$. Quality proper motion studies will allow cleaning of the entire dataset before being fed to the \binocs routine, removing much of the possible contamination. The \binocs code can also make determinations about cluster membership, and proper motion data will allow testing of that feature as a function of magnitude.


\subsection{Data Overview}
Table \ref{tab:clusters} summarizes the available data for use in this project, from the sources listed above, as well as from literature. 2MASS, WISE, and IRAC data are available for all clusters and are therefore not listed in table \ref{tab:clusters}. Data sources in italics are not yet reduced, and not currently available for analysis.

\begin{table} \centering \scriptsize
\begin{tabular}{| l | c  c  c |} \hline
\textbf{Cluster} & \textbf{Visual Data} & \textbf{Near-IR Data} & \textbf{Membership Data} \\ \hline \hline
Berkeley 39					& 								& \emph{NEWFIRM}	 				&								\\ \hline
Collinder 261				& \citet{1996MNRAS.283...66G}	& ISPI								&								\\ \hline
IC 4651						&								& ISPI								&								\\ \hline
Melotte 66					& 								& ISPI								&								\\ \hline
\multirow{2}{*}{NGC 188}	& \citet{1998AJ....116.1789V}	& \multirow{2}{*}{\emph{NEWFIRM}}	& \citet{2008AJ....135.2264G}	\\
							& \citet{2004PASP..116.1012S}	& 									& \citet{2003AJ....126.2922P}	\\ \hline
NGC 1039 (M34)				& \citet{1996AJ....111.1193J}	&									& \citet{1996AJ....111.1193J}	\\ \hline
NGC 1817					&								& \emph{NEWFIRM}					& \citet{2004AA...426..819B}	\\ \hline
NGC 1912 (M38)				& MOSAIC						& NEWFIRM							&								\\ \hline
NGC 1960 (M36)				& MOSAIC						& NEWFIRM							& \citet{2000AA...357..471S}	\\ \hline
NGC 2099 (M37)				& \citet{2008ApJ...675.1233H}	& NEWFIRM							& 								\\ \hline
NGC 2158					& MOSAIC						& \emph{NEWFIRM}					& 								\\ \hline
NGC 2168 (M35)				& MOSAIC						& NEWFIRM							& \citet{Geller:2010hn}			\\ \hline
NGC 2420					& \citet{2009ApJ...700..523A}	& NEWFIRM							&								\\ \hline
\multirow{2}{*}{NGC 2682 (M67)}	& \citet{2009ApJ...700..523A}	& \multirow{2}{*}{NEWFIRM}			& \citet{Mathieu:1997tk}		\\
							& \citet{2008AA...484..609Y}	&									& \citet{2008AA...484..609Y}	\\ \hline
NGC 6791					& \citet{2009ApJ...700..523A}	& \citet{2005AJ....129..656C}		& 								\\ \hline
NGC 6819					& \citet{2009AJ....138..159H}	&									& \citet{2009AJ....138..159H}	\\ \hline
\end{tabular}
\caption[Available data for cluster sample]{Available data for all clusters in this project. Names in italics represent observed data that has not yet been reduced. \label{tab:clusters}}
\end{table}

Each of the cluster datasets in table \ref{tab:clusters} have different levels of completeness, which will dictate which analysis projects the cluster can be included in. Clusters with complete photometry, although some may only have shallow 2MASS near-IR magnitudes, can have bulk binary population parameters determined, while complete deep photometry is necessary for the more detailed radial distribution analysis. 16 clusters were targeted for this project, but only 8 have the full wavelength coverage necessary for global binary population statistics. Clusters such as Collinder 261 and M34 have data sets in all wavelength ranges, but some photometry is too shallow, or too sparse to be useful for analysis. Of the 8 clusters with complete photometry, 4 have wide-field, \emph{deep} data sets available, which are needed for detailed analysis of the binary populations themselves. A list of clusters, and the analysis possible for each, is shown in table \ref{tab:analysis}.

\begin{table} \centering \scriptsize
\begin{tabular}{| l | c c c |} \hline
	& \textbf{Complete} & \textbf{Bulk} & \textbf{Detailed} \\
\textbf{Cluster} & \textbf{Photometry} & \textbf{Binaries} & \textbf{Analysis} \\ \hline \hline
Berkeley 39		&   &   &   \\
Collinder 261	& X &   &   \\
IC 4651			&   &   &   \\
Melotte 66		&   &   &   \\
NGC 188			& X & X &   \\
NGC 1039 (M34)	& X &   &   \\
NGC 1817		&   &   &   \\
NGC 1912 (M38)	& X &   &   \\
NGC 1960 (M36)	& X & X & X \\
NGC 2099 (M37)	& X & X & X \\
NGC 2158		& X & X &   \\
NGC 2168 (M35)	& X & X & X \\
NGC 2420		& X & X &   \\
NGC 2682 (M67)	& X & X & X \\
NGC 6791		& X & X &   \\
NGC 6819		& X &   &   \\ \hline
\end{tabular}
\caption[Possible analysis for each cluster in sample]{Possible analysis avenues for each cluster in targeted sample. Bulk binary parameters will be discussed in \S\ref{sec:Results}, while detailed binary analysis will be explored in \S\ref{sec:Radial}. \label{tab:analysis}}
\end{table}

While this project's main focus is on the \binocs routine and binary detection, its contribution to open cluster photometry should not be understated. Despite being very important astronomical objects, there is a dearth of published photometric data on open clusters. While many of these clusters have been observed dozens of times in the optical, the only IR photometry available is from 2MASS and WISE, which barely reaches below the turn-off. Providing deep, wide-field photometry, especially in the IR, for these standard open clusters will aid many avenues of research in the astronomical community.

