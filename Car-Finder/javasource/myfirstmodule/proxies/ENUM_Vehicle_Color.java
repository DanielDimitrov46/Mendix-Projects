// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies;

public enum ENUM_Vehicle_Color
{
	Black(new java.lang.String[][] { new java.lang.String[] { "en_US", "Black" } }),
	White(new java.lang.String[][] { new java.lang.String[] { "en_US", "White" } }),
	Red(new java.lang.String[][] { new java.lang.String[] { "en_US", "Red" } }),
	Green(new java.lang.String[][] { new java.lang.String[] { "en_US", "Green" } }),
	Yellow(new java.lang.String[][] { new java.lang.String[] { "en_US", "Yellow" } }),
	Brown(new java.lang.String[][] { new java.lang.String[] { "en_US", "Brown" } }),
	Blue(new java.lang.String[][] { new java.lang.String[] { "en_US", "Blue" } }),
	Pink(new java.lang.String[][] { new java.lang.String[] { "en_US", "Pink" } });

	private final java.util.Map<java.lang.String, java.lang.String> captions;

	private ENUM_Vehicle_Color(java.lang.String[][] captionStrings)
	{
		this.captions = new java.util.HashMap<>();
		for (java.lang.String[] captionString : captionStrings) {
			captions.put(captionString[0], captionString[1]);
		}
	}

	public java.lang.String getCaption(java.lang.String languageCode)
	{
		return captions.getOrDefault(languageCode, "en_US");
	}

	public java.lang.String getCaption()
	{
		return captions.get("en_US");
	}
}
