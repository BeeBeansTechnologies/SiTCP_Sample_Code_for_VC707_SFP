module
	WRAP_gig_ethernet_pcs_pma_0 (
		input	wire			SYS_CLK			,	// in	: 200Mhz
		input	wire			RESET_IN		,	// in
		input	wire			SGMII_CLK_P		,
		input	wire			SGMII_CLK_N		,
		output	wire			SFP_TX_P		,	// out	: Tx signal line
		output	wire			SFP_TX_N		,	// out	: 
		input	wire			SFP_RX_P		,	// in	: Rx signal line
		input	wire			SFP_RX_N		,	// in	: 
		
		output	wire			GMII_CLK		,	// out	: Tx, Rx shared clock line
		input	wire	[7:0]	GMII_TXD		,
		input	wire			GMII_TX_EN		,
		input	wire			GMII_TX_ER		,
		output	wire	[7:0]	GMII_RXD		,
		output	wire			GMII_RX_DV		,
		output	wire			GMII_RX_ER		,
		
		input	wire			SEL_SGMII		,
		output	wire	[15:0]	STATUS_VECTOR	
		
	);

endmodule

