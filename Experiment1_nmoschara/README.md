# Experiment 1: NMOS Characterization

## Aim

To obtain and plot the drain characteristics and transfer characteristics of an NMOS transistor using circuit simulation software (Cadence Virtuoso)

## Design Specifications

| Parameter | Value |
|---|---|
| Device | `nmos1v` (gpdk090_nmos1v) |
| Width (W) | 120 nm |
| Length (L) | 100 nm |
| Multiplier (m) | 1 |
| Supply voltage (VDD) | 1.2 V |
| VGS sweep range | 0 – 1.2 V |
| VDS sweep range | 0 – 1.2 V |
| Technology | GPDK090 |

## Circuit Description

The NMOS test schematic consists of a single `nmos1v` device with two independent DC voltage sources:
- **V0**, connected to the gate, sets `VGS`.
- **V1**, connected to the drain, sets `VDS`.

The source and bulk terminals are tied to ground. This configuration allows both the gate-source and drain-source voltages to be swept independently to characterize the device.

See [`[Schematic/nmos_test_schematic.png])`](./Schematic) for the circuit.

## Simulation Procedure

1. **Schematic capture** — Drew the NMOS test schematic in Virtuoso with independent `VGS` and `VDS` bias sources connected to the gate and drain terminals respectively.
2. **Drain characteristics (ID vs VDS)** — Set up a DC sweep of `V1` (drain supply) from 0 to 1.2 V at a fixed `VGS`, and plotted the resulting drain current.
3. **Family of curves** — Used **Tools → Parametric Analysis** to sweep `VGS` (0 to 1.2 V, 5 linear steps) while re-running the `V1` DC sweep, producing a family of `ID` vs `VDS` curves for different `VGS` values.
3. **Transfer characteristics (ID vs VGS)** — Ran a separate DC sweep with `VGS` (`V0`) as the sweep variable (0 to 1.2 V) at a fixed `VDS`, to obtain the drain current as a function of gate-source voltage.

## Results


### Drain Characteristics (ID vs VDS)

See [`IV_Characteristics/Drain_Characteristics/drain_characteristics.png`](./IV_Characteristics/Drain_Characteristics) — drain current increases with VDS, saturating once VDS exceeds VDSAT for the given VGS, consistent with the device entering saturation.

### Family of ID–VDS Curves (parametric sweep over VGS)

See [`IV_Characteristics/Family_of_Curves/family_of_curves.png`](./IV_Characteristics/Family_of_Curves) — higher VGS values produce proportionally higher saturation drain currents, as expected from square-law MOSFET behavior.

### Transfer Characteristics (ID vs VGS)

See [`IV_Characteristics/Transfer_Characteristics/transfer_characteristics.png`](./IV_Characteristics/Transfer_Characteristics) — drain current is negligible below threshold voltage and increases with VGS above threshold, confirming correct turn-on behavior.

## Observations

- Drain current showed the expected square-law dependence on VGS in saturation and linear dependence on VDS in the triode region.
- The family of ID–VDS curves clearly separates by VGS, verifying correct gate control of channel current.

## Conclusion

The drain and transfer characteristics of the NMOS device (GPDK090, W = 120 nm, L = 100 nm) were successfully obtained using Cadence Virtuoso.

## Files in this folder

- `Schematic/` — NMOS test schematic screenshot(s)
- `Simulation/` — ADE-L analysis setup and run screenshots (DC analysis dialogs, ADE-L session windows, parametric analysis progress)
- `IV_Characteristics/` — Output waveforms, one subfolder per characteristic:
  - `Drain_Characteristics/` — ID vs VDS plot
  - `Transfer_Characteristics/` — ID vs VGS plot
  - `Family_of_Curves/` — Parametric ID–VDS family of curves over VGS
- `Report.pdf` —Lab Report

